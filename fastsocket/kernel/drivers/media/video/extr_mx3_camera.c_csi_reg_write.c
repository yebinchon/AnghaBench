
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx3_camera_dev {scalar_t__ base; } ;
typedef scalar_t__ off_t ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void csi_reg_write(struct mx3_camera_dev *mx3, u32 value, off_t reg)
{
 __raw_writel(value, mx3->base + reg);
}
