
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int sa_family; int sa_data; } ;
union iwreq_data {TYPE_4__ addr; } ;
struct airo_info {int* fids; TYPE_6__* dev; TYPE_2__* txfids; } ;
typedef size_t s32 ;
typedef int __le16 ;
struct TYPE_7__ {int status; } ;
struct TYPE_11__ {TYPE_1__ ctlhdr; } ;
typedef TYPE_5__ WifiCtlHdr ;
struct TYPE_9__ {int tx_carrier_errors; int tx_heartbeat_errors; int tx_aborted_errors; } ;
struct TYPE_12__ {TYPE_3__ stats; } ;
struct TYPE_8__ {scalar_t__ virtual_host_addr; } ;


 int ARPHRD_ETHER ;
 int BAP0 ;
 int ETH_ALEN ;
 int IWEVTXDROP ;
 scalar_t__ SUCCESS ;
 int bap_read (struct airo_info*,int *,int,int ) ;
 scalar_t__ bap_setup (struct airo_info*,int,int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,char*,int ) ;
 int wireless_send_event (TYPE_6__*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void get_tx_error(struct airo_info *ai, s32 fid)
{
 __le16 status;

 if (fid < 0)
  status = ((WifiCtlHdr *)ai->txfids[0].virtual_host_addr)->ctlhdr.status;
 else {
  if (bap_setup(ai, ai->fids[fid] & 0xffff, 4, BAP0) != SUCCESS)
   return;
  bap_read(ai, &status, 2, BAP0);
 }
 if (le16_to_cpu(status) & 2)
  ai->dev->stats.tx_aborted_errors++;
 if (le16_to_cpu(status) & 4)
  ai->dev->stats.tx_heartbeat_errors++;
 if (le16_to_cpu(status) & 8)
  { }
 if (le16_to_cpu(status) & 0x10)
  ai->dev->stats.tx_carrier_errors++;
 if (le16_to_cpu(status) & 0x20)
  { }




 if ((le16_to_cpu(status) & 2) ||
      (le16_to_cpu(status) & 4)) {
  union iwreq_data wrqu;
  char junk[0x18];




  bap_read(ai, (__le16 *) junk, 0x18, BAP0);
  memcpy(wrqu.addr.sa_data, junk + 0x12, ETH_ALEN);
  wrqu.addr.sa_family = ARPHRD_ETHER;


  wireless_send_event(ai->dev, IWEVTXDROP, &wrqu, ((void*)0));
 }
}
