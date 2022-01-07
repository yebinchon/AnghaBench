
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int cx_andor (int ,int ,int ) ;

__attribute__((used)) static inline int cx23888_ir_and_or4(struct cx23885_dev *dev, u32 addr,
         u32 and_mask, u32 or_value)
{
 cx_andor(addr, ~and_mask, or_value);
 return 0;
}
