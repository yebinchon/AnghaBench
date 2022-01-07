
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t4_wait_op_done_val (struct adapter*,int,int ,int,int,int,int *) ;

__attribute__((used)) static inline int t4_wait_op_done(struct adapter *adapter, int reg, u32 mask,
      int polarity, int attempts, int delay)
{
 return t4_wait_op_done_val(adapter, reg, mask, polarity, attempts,
       delay, ((void*)0));
}
