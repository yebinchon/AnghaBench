
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef scalar_t__ u32 ;
struct rndis_per_packet_info {scalar_t__ type; scalar_t__ ppi_offset; scalar_t__ size; } ;
struct rndis_packet {scalar_t__ per_pkt_info_offset; int per_pkt_info_len; } ;



__attribute__((used)) static inline void *rndis_get_ppi(struct rndis_packet *rpkt, u32 type)
{
 struct rndis_per_packet_info *ppi;
 int len;

 if (rpkt->per_pkt_info_offset == 0)
  return ((void*)0);

 ppi = (struct rndis_per_packet_info *)((ulong)rpkt +
  rpkt->per_pkt_info_offset);
 len = rpkt->per_pkt_info_len;

 while (len > 0) {
  if (ppi->type == type)
   return (void *)((ulong)ppi + ppi->ppi_offset);
  len -= ppi->size;
  ppi = (struct rndis_per_packet_info *)((ulong)ppi + ppi->size);
 }

 return ((void*)0);
}
