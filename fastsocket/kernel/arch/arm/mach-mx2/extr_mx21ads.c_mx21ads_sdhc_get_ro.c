
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int MX21ADS_IO_REG ;
 int MX21ADS_IO_SD_WP ;
 int __raw_readw (int ) ;

__attribute__((used)) static int mx21ads_sdhc_get_ro(struct device *dev)
{
 return (__raw_readw(MX21ADS_IO_REG) & MX21ADS_IO_SD_WP) ? 1 : 0;
}
