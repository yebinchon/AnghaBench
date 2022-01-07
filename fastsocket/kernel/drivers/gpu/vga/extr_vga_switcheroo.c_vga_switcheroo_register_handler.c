
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_handler {int dummy; } ;
struct TYPE_2__ {struct vga_switcheroo_handler* handler; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

int vga_switcheroo_register_handler(struct vga_switcheroo_handler *handler)
{
 mutex_lock(&vgasr_mutex);
 if (vgasr_priv.handler) {
  mutex_unlock(&vgasr_mutex);
  return -EINVAL;
 }

 vgasr_priv.handler = handler;
 mutex_unlock(&vgasr_mutex);
 return 0;
}
