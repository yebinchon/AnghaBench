
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_dev {int dummy; } ;


 int kfree (struct port_dev*) ;
 int port_remove_dev (struct port_dev*) ;

void port_kern_free(void *d)
{
 struct port_dev *dev = d;

 port_remove_dev(dev);
 kfree(dev);
}
