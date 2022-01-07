
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct pxa_camera_dev {unsigned long ciclk; scalar_t__ base; } ;


 scalar_t__ CITOR ;
 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void recalculate_fifo_timeout(struct pxa_camera_dev *pcdev,
         unsigned long pclk)
{

 u32 ciclk_per_pixel = pcdev->ciclk / pclk + 1;

 __raw_writel(ciclk_per_pixel, pcdev->base + CITOR);
}
