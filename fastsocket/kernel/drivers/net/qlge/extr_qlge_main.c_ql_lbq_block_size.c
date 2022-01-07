
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {unsigned int lbq_buf_order; } ;


 unsigned int PAGE_SIZE ;

__attribute__((used)) static inline unsigned int ql_lbq_block_size(struct ql_adapter *qdev)
{
 return PAGE_SIZE << qdev->lbq_buf_order;
}
