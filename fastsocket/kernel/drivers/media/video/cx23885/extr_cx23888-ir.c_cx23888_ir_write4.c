
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int cx_write (int ,int ) ;

__attribute__((used)) static
inline int cx23888_ir_write4(struct cx23885_dev *dev, u32 addr, u32 value)
{
 cx_write(addr, value);
 return 0;
}
