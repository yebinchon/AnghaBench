
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int name; } ;
struct hfa384x_tx_frame {scalar_t__ sw_support; int duration_id; int seq_ctrl; int tx_rate; int retry_count; int status; } ;
struct TYPE_5__ {int frame_dump; struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG_EXTRA ;
 int HFA384X_EVACK_OFF ;
 int HFA384X_EV_TX ;
 int HFA384X_OUTW (int ,int ) ;
 int PDEBUG (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int PRISM2_DUMP_TX_HDR ;
 int hostap_tx_callback (TYPE_1__*,struct hfa384x_tx_frame*,int,char*) ;
 scalar_t__ hostap_tx_compl_read (TYPE_1__*,int ,struct hfa384x_tx_frame*,char**) ;
 int kfree (char*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void prism2_tx_ev(local_info_t *local)
{
 struct net_device *dev = local->dev;
 char *payload = ((void*)0);
 struct hfa384x_tx_frame txdesc;

 if (hostap_tx_compl_read(local, 0, &txdesc, &payload))
  goto fail;

 if (local->frame_dump & PRISM2_DUMP_TX_HDR) {
  PDEBUG(DEBUG_EXTRA, "%s: TX - status=0x%04x "
         "retry_count=%d tx_rate=%d seq_ctrl=%d "
         "duration_id=%d\n",
         dev->name, le16_to_cpu(txdesc.status),
         txdesc.retry_count, txdesc.tx_rate,
         le16_to_cpu(txdesc.seq_ctrl),
         le16_to_cpu(txdesc.duration_id));
 }

 if (txdesc.sw_support)
  hostap_tx_callback(local, &txdesc, 1, payload);
 kfree(payload);

 fail:
 HFA384X_OUTW(HFA384X_EV_TX, HFA384X_EVACK_OFF);
}
