
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx3_camera_dev {scalar_t__ base; } ;
typedef scalar_t__ off_t ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 csi_reg_read(struct mx3_camera_dev *mx3, off_t reg)
{
 return __raw_readl(mx3->base + reg);
}
