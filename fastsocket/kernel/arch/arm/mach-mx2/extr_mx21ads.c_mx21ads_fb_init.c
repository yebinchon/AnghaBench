
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct platform_device {int dummy; } ;


 int MX21ADS_IO_LCDON ;
 int MX21ADS_IO_REG ;
 int __raw_readw (int ) ;
 int __raw_writew (int ,int ) ;

__attribute__((used)) static int mx21ads_fb_init(struct platform_device *pdev)
{
 u16 tmp;

 tmp = __raw_readw(MX21ADS_IO_REG);
 tmp |= MX21ADS_IO_LCDON;
 __raw_writew(tmp, MX21ADS_IO_REG);
 return 0;
}
