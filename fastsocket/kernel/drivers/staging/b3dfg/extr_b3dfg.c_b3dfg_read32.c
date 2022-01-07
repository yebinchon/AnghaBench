
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b3dfg_dev {scalar_t__ regs; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 b3dfg_read32(struct b3dfg_dev *fgdev, u16 reg)
{
 return ioread32(fgdev->regs + reg);
}
