
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct serio {struct serio* parent; TYPE_1__ id; int * drv; } ;
struct psmouse_attribute {int (* set ) (struct psmouse*,int ,char const*,size_t) ;scalar_t__ protect; int data; } ;
struct psmouse {scalar_t__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ PSMOUSE_IGNORE ;
 scalar_t__ SERIO_PS_PSTHRU ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int psmouse_activate (struct psmouse*) ;
 int psmouse_deactivate (struct psmouse*) ;
 int psmouse_drv ;
 int psmouse_mutex ;
 struct psmouse* serio_get_drvdata (struct serio*) ;
 int serio_pin_driver (struct serio*) ;
 int serio_unpin_driver (struct serio*) ;
 int stub1 (struct psmouse*,int ,char const*,size_t) ;
 struct psmouse_attribute* to_psmouse_attr (struct device_attribute*) ;
 struct serio* to_serio_port (struct device*) ;

ssize_t psmouse_attr_set_helper(struct device *dev, struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct serio *serio = to_serio_port(dev);
 struct psmouse_attribute *attr = to_psmouse_attr(devattr);
 struct psmouse *psmouse, *parent = ((void*)0);
 int retval;

 retval = serio_pin_driver(serio);
 if (retval)
  return retval;

 if (serio->drv != &psmouse_drv) {
  retval = -ENODEV;
  goto out_unpin;
 }

 retval = mutex_lock_interruptible(&psmouse_mutex);
 if (retval)
  goto out_unpin;

 psmouse = serio_get_drvdata(serio);

 if (attr->protect) {
  if (psmouse->state == PSMOUSE_IGNORE) {
   retval = -ENODEV;
   goto out_unlock;
  }

  if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
   parent = serio_get_drvdata(serio->parent);
   psmouse_deactivate(parent);
  }

  psmouse_deactivate(psmouse);
 }

 retval = attr->set(psmouse, attr->data, buf, count);

 if (attr->protect) {
  if (retval != -ENODEV)
   psmouse_activate(psmouse);

  if (parent)
   psmouse_activate(parent);
 }

 out_unlock:
 mutex_unlock(&psmouse_mutex);
 out_unpin:
 serio_unpin_driver(serio);
 return retval;
}
