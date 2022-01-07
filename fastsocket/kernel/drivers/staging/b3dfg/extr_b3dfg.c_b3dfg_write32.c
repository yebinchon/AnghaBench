
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b3dfg_dev {scalar_t__ regs; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void b3dfg_write32(struct b3dfg_dev *fgdev, u16 reg, u32 value)
{
 iowrite32(value, fgdev->regs + reg);
}
