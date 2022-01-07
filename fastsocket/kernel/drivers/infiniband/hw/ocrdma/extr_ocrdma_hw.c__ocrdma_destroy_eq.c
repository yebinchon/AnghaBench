
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ created; } ;
struct ocrdma_eq {TYPE_2__ q; } ;
struct TYPE_4__ {scalar_t__ dev_family; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;


 scalar_t__ OCRDMA_GEN2_FAMILY ;
 int QTYPE_EQ ;
 int ocrdma_free_eq_vect_gen2 (struct ocrdma_dev*) ;
 int ocrdma_free_q (struct ocrdma_dev*,TYPE_2__*) ;
 int ocrdma_mbx_delete_q (struct ocrdma_dev*,TYPE_2__*,int ) ;

__attribute__((used)) static void _ocrdma_destroy_eq(struct ocrdma_dev *dev, struct ocrdma_eq *eq)
{
 if (eq->q.created) {
  ocrdma_mbx_delete_q(dev, &eq->q, QTYPE_EQ);
  if (dev->nic_info.dev_family == OCRDMA_GEN2_FAMILY)
   ocrdma_free_eq_vect_gen2(dev);
  ocrdma_free_q(dev, &eq->q);
 }
}
