
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct au1xmmc_host {int dummy; } ;


 int HOST_CONFIG (struct au1xmmc_host*) ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;

__attribute__((used)) static inline void IRQ_ON(struct au1xmmc_host *host, u32 mask)
{
 u32 val = au_readl(HOST_CONFIG(host));
 val |= mask;
 au_writel(val, HOST_CONFIG(host));
 au_sync();
}
