
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct ub_dev* context; } ;
struct ub_dev {int tasklet; int work_done; } ;


 int tasklet_schedule (int *) ;
 int ub_complete (int *) ;

__attribute__((used)) static void ub_urb_complete(struct urb *urb)
{
 struct ub_dev *sc = urb->context;

 ub_complete(&sc->work_done);
 tasklet_schedule(&sc->tasklet);
}
