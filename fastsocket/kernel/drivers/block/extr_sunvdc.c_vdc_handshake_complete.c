
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int dummy; } ;


 int WAITING_FOR_LINK_UP ;
 int vdc_finish (struct vio_driver_state*,int ,int ) ;

__attribute__((used)) static void vdc_handshake_complete(struct vio_driver_state *vio)
{
 vdc_finish(vio, 0, WAITING_FOR_LINK_UP);
}
