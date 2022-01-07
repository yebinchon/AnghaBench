
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;


 int BCMA_IOCTL ;
 int bcma_aread32 (struct bcma_device*,int ) ;
 int bcma_awrite32 (struct bcma_device*,int ,int) ;

__attribute__((used)) static void brcms_b_core_ioctl(struct brcms_hardware *wlc_hw, u32 m, u32 v)
{
 struct bcma_device *core = wlc_hw->d11core;
 u32 ioctl = bcma_aread32(core, BCMA_IOCTL) & ~m;

 bcma_awrite32(core, BCMA_IOCTL, ioctl | v);
}
