
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {TYPE_1__* im; } ;
struct bfad_port_s {struct bfad_im_port_s* im_port; } ;
struct bfad_im_port_s {int port_delete_work; } ;
struct TYPE_2__ {int drv_workq; } ;


 int queue_work (int ,int *) ;

void
bfad_im_port_delete(struct bfad_s *bfad, struct bfad_port_s *port)
{
 struct bfad_im_port_s *im_port = port->im_port;

 queue_work(bfad->im->drv_workq,
    &im_port->port_delete_work);
}
