
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cma_hdr {int ip_version; } ;



__attribute__((used)) static inline u8 cma_get_ip_ver(struct cma_hdr *hdr)
{
 return hdr->ip_version >> 4;
}
