
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct mpsc_port_info {scalar_t__ sdma_base; } ;


 scalar_t__ SDMA_SDCM ;
 int SDMA_SDCM_TXD ;
 int readl (scalar_t__) ;

__attribute__((used)) static uint mpsc_sdma_tx_active(struct mpsc_port_info *pi)
{
 return readl(pi->sdma_base + SDMA_SDCM) & SDMA_SDCM_TXD;
}
