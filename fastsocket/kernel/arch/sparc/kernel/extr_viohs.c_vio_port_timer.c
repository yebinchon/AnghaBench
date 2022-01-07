
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dummy; } ;


 int vio_port_up (struct vio_driver_state*) ;

__attribute__((used)) static void vio_port_timer(unsigned long _arg)
{
 struct vio_driver_state *vio = (struct vio_driver_state *) _arg;

 vio_port_up(vio);
}
