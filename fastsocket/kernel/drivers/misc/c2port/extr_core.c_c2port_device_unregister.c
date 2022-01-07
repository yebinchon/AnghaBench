
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2port_device {int id; int dev; int name; } ;


 int c2port_bin_attrs ;
 int c2port_class ;
 int c2port_idr ;
 int c2port_idr_lock ;
 int dev_info (int ,char*,int ) ;
 int device_destroy (int ,int ) ;
 int device_remove_bin_file (int ,int *) ;
 int idr_remove (int *,int ) ;
 int kfree (struct c2port_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void c2port_device_unregister(struct c2port_device *c2dev)
{
 if (!c2dev)
  return;

 dev_info(c2dev->dev, "C2 port %s removed\n", c2dev->name);

 device_remove_bin_file(c2dev->dev, &c2port_bin_attrs);
 spin_lock_irq(&c2port_idr_lock);
 idr_remove(&c2port_idr, c2dev->id);
 spin_unlock_irq(&c2port_idr_lock);

 device_destroy(c2port_class, c2dev->id);

 kfree(c2dev);
}
