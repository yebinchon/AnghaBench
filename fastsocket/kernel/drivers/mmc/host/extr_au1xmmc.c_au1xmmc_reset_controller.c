
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xmmc_host {int dummy; } ;


 int AU1XMMC_INTERRUPTS ;
 int HOST_BLKSIZE (struct au1xmmc_host*) ;
 int HOST_CONFIG (struct au1xmmc_host*) ;
 int HOST_CONFIG2 (struct au1xmmc_host*) ;
 int HOST_ENABLE (struct au1xmmc_host*) ;
 int HOST_STATUS (struct au1xmmc_host*) ;
 int HOST_TIMEOUT (struct au1xmmc_host*) ;
 int SD_CONFIG2_EN ;
 int SD_CONFIG2_FF ;
 int SD_ENABLE_CE ;
 int SD_ENABLE_R ;
 int au_sync () ;
 int au_sync_delay (int) ;
 int au_writel (int,int ) ;

__attribute__((used)) static void au1xmmc_reset_controller(struct au1xmmc_host *host)
{

 au_writel(SD_ENABLE_CE, HOST_ENABLE(host));
        au_sync_delay(1);

 au_writel(SD_ENABLE_R | SD_ENABLE_CE, HOST_ENABLE(host));
 au_sync_delay(5);

 au_writel(~0, HOST_STATUS(host));
 au_sync();

 au_writel(0, HOST_BLKSIZE(host));
 au_writel(0x001fffff, HOST_TIMEOUT(host));
 au_sync();

 au_writel(SD_CONFIG2_EN, HOST_CONFIG2(host));
        au_sync();

 au_writel(SD_CONFIG2_EN | SD_CONFIG2_FF, HOST_CONFIG2(host));
 au_sync_delay(1);

 au_writel(SD_CONFIG2_EN, HOST_CONFIG2(host));
 au_sync();


 au_writel(AU1XMMC_INTERRUPTS, HOST_CONFIG(host));
 au_sync();
}
