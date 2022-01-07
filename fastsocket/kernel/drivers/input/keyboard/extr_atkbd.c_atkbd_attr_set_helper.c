
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int * drv; } ;
struct device {int dummy; } ;
typedef struct atkbd atkbd ;
typedef int ssize_t ;


 int ENODEV ;
 int atkbd_disable (struct atkbd*) ;
 int atkbd_drv ;
 int atkbd_enable (struct atkbd*) ;
 struct atkbd* serio_get_drvdata (struct serio*) ;
 int serio_pin_driver (struct serio*) ;
 int serio_unpin_driver (struct serio*) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static ssize_t atkbd_attr_set_helper(struct device *dev, const char *buf, size_t count,
    ssize_t (*handler)(struct atkbd *, const char *, size_t))
{
 struct serio *serio = to_serio_port(dev);
 struct atkbd *atkbd;
 int retval;

 retval = serio_pin_driver(serio);
 if (retval)
  return retval;

 if (serio->drv != &atkbd_drv) {
  retval = -ENODEV;
  goto out;
 }

 atkbd = serio_get_drvdata(serio);
 atkbd_disable(atkbd);
 retval = handler(atkbd, buf, count);
 atkbd_enable(atkbd);

out:
 serio_unpin_driver(serio);
 return retval;
}
