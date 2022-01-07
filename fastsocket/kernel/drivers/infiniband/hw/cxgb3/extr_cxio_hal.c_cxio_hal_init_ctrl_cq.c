
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cq_setup {int size; int ovfl_mode; scalar_t__ credit_thres; scalar_t__ credits; scalar_t__ base_addr; scalar_t__ id; } ;
struct cxio_rdev {TYPE_1__* t3cdev_p; } ;
struct TYPE_2__ {int (* ctl ) (TYPE_1__*,int ,struct rdma_cq_setup*) ;} ;


 int RDMA_CQ_SETUP ;
 int stub1 (TYPE_1__*,int ,struct rdma_cq_setup*) ;

__attribute__((used)) static int cxio_hal_init_ctrl_cq(struct cxio_rdev *rdev_p)
{
 struct rdma_cq_setup setup;
 setup.id = 0;
 setup.base_addr = 0;
 setup.size = 1;
 setup.credits = 0;


 setup.credit_thres = 0;
 setup.ovfl_mode = 1;
 return (rdev_p->t3cdev_p->ctl(rdev_p->t3cdev_p, RDMA_CQ_SETUP, &setup));
}
