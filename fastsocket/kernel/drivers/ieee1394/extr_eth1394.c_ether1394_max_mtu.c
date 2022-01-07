
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union eth1394_hdr {int dummy; } eth1394_hdr ;
struct TYPE_2__ {int max_rec; } ;
struct hpsb_host {TYPE_1__ csr; } ;


 int ETHER1394_GASP_OVERHEAD ;

__attribute__((used)) static inline int ether1394_max_mtu(struct hpsb_host* host)
{
 return (1 << (host->csr.max_rec + 1))
   - sizeof(union eth1394_hdr) - ETHER1394_GASP_OVERHEAD;
}
