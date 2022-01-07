
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int sgid_tbl; int cq_tbl; int qp_tbl; } ;


 int kfree (int ) ;

__attribute__((used)) static void ocrdma_free_resources(struct ocrdma_dev *dev)
{
 kfree(dev->qp_tbl);
 kfree(dev->cq_tbl);
 kfree(dev->sgid_tbl);
}
