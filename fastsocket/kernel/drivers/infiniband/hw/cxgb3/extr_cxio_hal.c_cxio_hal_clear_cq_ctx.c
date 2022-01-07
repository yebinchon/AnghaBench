
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rdma_cq_setup {scalar_t__ ovfl_mode; scalar_t__ credit_thres; scalar_t__ credits; scalar_t__ size; scalar_t__ base_addr; int id; } ;
struct cxio_rdev {TYPE_1__* t3cdev_p; } ;
struct TYPE_2__ {int (* ctl ) (TYPE_1__*,int ,struct rdma_cq_setup*) ;} ;


 int RDMA_CQ_SETUP ;
 int stub1 (TYPE_1__*,int ,struct rdma_cq_setup*) ;

__attribute__((used)) static int cxio_hal_clear_cq_ctx(struct cxio_rdev *rdev_p, u32 cqid)
{
 struct rdma_cq_setup setup;
 setup.id = cqid;
 setup.base_addr = 0;
 setup.size = 0;
 setup.credits = 0;
 setup.credit_thres = 0;
 setup.ovfl_mode = 0;
 return (rdev_p->t3cdev_p->ctl(rdev_p->t3cdev_p, RDMA_CQ_SETUP, &setup));
}
