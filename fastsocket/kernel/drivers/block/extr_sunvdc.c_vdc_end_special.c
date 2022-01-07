
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_disk_desc {int status; } ;
struct vdc_port {int vio; } ;


 int WAITING_FOR_GEN_CMD ;
 int vdc_finish (int *,int,int ) ;

__attribute__((used)) static void vdc_end_special(struct vdc_port *port, struct vio_disk_desc *desc)
{
 int err = desc->status;

 vdc_finish(&port->vio, -err, WAITING_FOR_GEN_CMD);
}
