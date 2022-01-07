
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_link_report_data {int line_speed; scalar_t__ link_report_flags; } ;
struct TYPE_3__ {scalar_t__ link_report_flags; } ;
struct bnx2x {int dev; TYPE_1__ last_reported_link; int link_cnt; } ;
typedef int cur_data ;


 int BNX2X_LINK_REPORT_FD ;
 int BNX2X_LINK_REPORT_LINK_DOWN ;
 int BNX2X_LINK_REPORT_RX_FC_ON ;
 int BNX2X_LINK_REPORT_TX_FC_ON ;
 int CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int bnx2x_fill_report_data (struct bnx2x*,struct bnx2x_link_report_data*) ;
 int bnx2x_read_mf_cfg (struct bnx2x*) ;
 int memcmp (struct bnx2x_link_report_data*,TYPE_1__*,int) ;
 int memcpy (TYPE_1__*,struct bnx2x_link_report_data*,int) ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*,int ,char const*,char const*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 scalar_t__ test_and_clear_bit (int ,scalar_t__*) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;

void __bnx2x_link_report(struct bnx2x *bp)
{
 struct bnx2x_link_report_data cur_data;


 if (IS_PF(bp) && !CHIP_IS_E1(bp))
  bnx2x_read_mf_cfg(bp);


 bnx2x_fill_report_data(bp, &cur_data);


 if (!memcmp(&cur_data, &bp->last_reported_link, sizeof(cur_data)) ||
     (test_bit(BNX2X_LINK_REPORT_LINK_DOWN,
        &bp->last_reported_link.link_report_flags) &&
      test_bit(BNX2X_LINK_REPORT_LINK_DOWN,
        &cur_data.link_report_flags)))
  return;

 bp->link_cnt++;




 memcpy(&bp->last_reported_link, &cur_data, sizeof(cur_data));

 if (test_bit(BNX2X_LINK_REPORT_LINK_DOWN,
       &cur_data.link_report_flags)) {
  netif_carrier_off(bp->dev);
  netdev_err(bp->dev, "NIC Link is Down\n");
  return;
 } else {
  const char *duplex;
  const char *flow;

  netif_carrier_on(bp->dev);

  if (test_and_clear_bit(BNX2X_LINK_REPORT_FD,
           &cur_data.link_report_flags))
   duplex = "full";
  else
   duplex = "half";





  if (cur_data.link_report_flags) {
   if (test_bit(BNX2X_LINK_REPORT_RX_FC_ON,
         &cur_data.link_report_flags)) {
    if (test_bit(BNX2X_LINK_REPORT_TX_FC_ON,
         &cur_data.link_report_flags))
     flow = "ON - receive & transmit";
    else
     flow = "ON - receive";
   } else {
    flow = "ON - transmit";
   }
  } else {
   flow = "none";
  }
  netdev_info(bp->dev, "NIC Link is Up, %d Mbps %s duplex, Flow control: %s\n",
       cur_data.line_speed, duplex, flow);
 }
}
