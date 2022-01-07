
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto4xx_device {scalar_t__ sdr; scalar_t__ sdr_pa; } ;
struct ce_sd {int dummy; } ;
typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static inline struct ce_sd *crypto4xx_get_sdp(struct crypto4xx_device *dev,
           dma_addr_t *sd_dma, u32 idx)
{
 *sd_dma = dev->sdr_pa + sizeof(struct ce_sd) * idx;

 return (struct ce_sd *)(dev->sdr + sizeof(struct ce_sd) * idx);
}
