
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct hpsb_host {int id; } ;
struct eth1394_host_info {int dev; } ;
typedef int quadlet_t ;


 int ETH1394_PRINT_G (int ,char*,int ) ;
 int KERN_ERR ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int eth1394_highlevel ;
 scalar_t__ ether1394_data_handler (int ,int,int,char*,size_t) ;
 struct eth1394_host_info* hpsb_get_hostinfo (int *,struct hpsb_host*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ether1394_write(struct hpsb_host *host, int srcid, int destid,
      quadlet_t *data, u64 addr, size_t len, u16 flags)
{
 struct eth1394_host_info *hi;

 hi = hpsb_get_hostinfo(&eth1394_highlevel, host);
 if (unlikely(!hi)) {
  ETH1394_PRINT_G(KERN_ERR, "No net device at fw-host%d\n",
    host->id);
  return RCODE_ADDRESS_ERROR;
 }

 if (ether1394_data_handler(hi->dev, srcid, destid, (char*)data, len))
  return RCODE_ADDRESS_ERROR;
 else
  return RCODE_COMPLETE;
}
