
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ioat2_dma_chan {size_t xfercap_log; } ;



__attribute__((used)) static inline u16 ioat2_xferlen_to_descs(struct ioat2_dma_chan *ioat, size_t len)
{
 u16 num_descs = len >> ioat->xfercap_log;

 num_descs += !!(len & ((1 << ioat->xfercap_log) - 1));
 return num_descs;
}
