
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct au1xmmc_host {scalar_t__ status; } ;


 int HOST_CMD (struct au1xmmc_host*) ;
 int HOST_CONFIG2 (struct au1xmmc_host*) ;
 scalar_t__ HOST_S_DATA ;
 scalar_t__ HOST_S_STOP ;
 int SD_CONFIG2_DF ;
 int STOP_CMD ;
 int WARN_ON (int) ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int,int ) ;

__attribute__((used)) static inline void SEND_STOP(struct au1xmmc_host *host)
{
 u32 config2;

 WARN_ON(host->status != HOST_S_DATA);
 host->status = HOST_S_STOP;

 config2 = au_readl(HOST_CONFIG2(host));
 au_writel(config2 | SD_CONFIG2_DF, HOST_CONFIG2(host));
 au_sync();


 au_writel(STOP_CMD, HOST_CMD(host));
}
