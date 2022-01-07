
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritz_bcs {int channel; } ;


 int DBG (int,char*,...) ;
 int HDLC_INT_RPR ;
 int HDLC_INT_XDU ;
 int HDLC_INT_XPR ;
 int hdlc_rpr_irq (struct fritz_bcs*,int) ;
 int hdlc_xdu_irq (struct fritz_bcs*) ;
 int hdlc_xpr_irq (struct fritz_bcs*) ;

__attribute__((used)) static void hdlc_irq_one(struct fritz_bcs *bcs, u32 stat)
{
 DBG(0x10, "ch%d stat %#x", bcs->channel, stat);
 if (stat & HDLC_INT_RPR) {
  DBG(0x10, "RPR");
  hdlc_rpr_irq(bcs, stat);
 }
 if (stat & HDLC_INT_XDU) {
  DBG(0x10, "XDU");
  hdlc_xdu_irq(bcs);
  hdlc_xpr_irq(bcs);
  return;
 }
 if (stat & HDLC_INT_XPR) {
  DBG(0x10, "XPR");
  hdlc_xpr_irq(bcs);
 }
}
