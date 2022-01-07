
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct au1xmmc_host {int dummy; } ;


 int HOST_CONFIG (struct au1xmmc_host*) ;
 unsigned int SD_CONFIG_DE ;
 unsigned int SD_CONFIG_DIV ;
 int SYS_POWERCTRL ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned int,int ) ;
 unsigned int get_au1x00_speed () ;

__attribute__((used)) static void au1xmmc_set_clock(struct au1xmmc_host *host, int rate)
{
 unsigned int pbus = get_au1x00_speed();
 unsigned int divisor;
 u32 config;




 pbus /= ((au_readl(SYS_POWERCTRL) & 0x3) + 2);
 pbus /= 2;
 divisor = ((pbus / rate) / 2) - 1;

 config = au_readl(HOST_CONFIG(host));

 config &= ~(SD_CONFIG_DIV);
 config |= (divisor & SD_CONFIG_DIV) | SD_CONFIG_DE;

 au_writel(config, HOST_CONFIG(host));
 au_sync();
}
