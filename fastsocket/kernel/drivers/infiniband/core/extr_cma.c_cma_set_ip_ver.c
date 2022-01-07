
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cma_hdr {int ip_version; } ;



__attribute__((used)) static inline void cma_set_ip_ver(struct cma_hdr *hdr, u8 ip_ver)
{
 hdr->ip_version = (ip_ver << 4) | (hdr->ip_version & 0xF);
}
