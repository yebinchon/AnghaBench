
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline __le32
il4965_dma_addr2rbd_ptr(struct il_priv *il, dma_addr_t dma_addr)
{
 return cpu_to_le32((u32) (dma_addr >> 8));
}
