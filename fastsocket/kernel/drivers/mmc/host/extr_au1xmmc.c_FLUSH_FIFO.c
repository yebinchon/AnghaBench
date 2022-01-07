
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct au1xmmc_host {int dummy; } ;


 int HOST_CONFIG2 (struct au1xmmc_host*) ;
 int SD_CONFIG2_DF ;
 int SD_CONFIG2_FF ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_sync_delay (int) ;
 int au_writel (int,int ) ;

__attribute__((used)) static inline void FLUSH_FIFO(struct au1xmmc_host *host)
{
 u32 val = au_readl(HOST_CONFIG2(host));

 au_writel(val | SD_CONFIG2_FF, HOST_CONFIG2(host));
 au_sync_delay(1);


 val &= ~SD_CONFIG2_DF;

 au_writel(val, HOST_CONFIG2(host));
 au_sync();
}
