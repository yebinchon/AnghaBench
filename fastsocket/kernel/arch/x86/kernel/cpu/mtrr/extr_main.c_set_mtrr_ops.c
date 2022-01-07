
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_ops {size_t vendor; } ;


 size_t X86_VENDOR_NUM ;
 struct mtrr_ops** mtrr_ops ;

void set_mtrr_ops(struct mtrr_ops *ops)
{
 if (ops->vendor && ops->vendor < X86_VENDOR_NUM)
  mtrr_ops[ops->vendor] = ops;
}
