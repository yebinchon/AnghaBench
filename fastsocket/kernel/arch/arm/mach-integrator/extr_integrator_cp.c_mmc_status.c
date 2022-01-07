
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ IO_ADDRESS (int) ;
 unsigned int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static unsigned int mmc_status(struct device *dev)
{
 unsigned int status = readl(IO_ADDRESS(0xca000000) + 4);
 writel(8, IO_ADDRESS(0xcb000000) + 8);

 return status & 8;
}
