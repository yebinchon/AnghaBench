
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cmd; int xml; int mode; } ;
struct TYPE_9__ {TYPE_1__ sr; int ctrl; } ;
struct TYPE_10__ {TYPE_2__ ctrl; } ;
struct TYPE_11__ {TYPE_3__ hdlc; } ;
struct BCState {TYPE_4__ hw; scalar_t__ channel; TYPE_5__* cs; } ;
struct TYPE_12__ {int debug; scalar_t__ subtyp; } ;


 scalar_t__ AVM_FRITZ_PCI ;
 scalar_t__ HDLC_STATUS ;
 int L1_DEB_HSCX ;
 int WriteHDLCPCI (TYPE_5__*,scalar_t__,scalar_t__,int ) ;
 int WriteHDLCPnP (TYPE_5__*,scalar_t__,scalar_t__,int ) ;
 int debugl1 (TYPE_5__*,char*,scalar_t__,int,int ) ;

__attribute__((used)) static void
write_ctrl(struct BCState *bcs, int which) {

 if (bcs->cs->debug & L1_DEB_HSCX)
  debugl1(bcs->cs, "hdlc %c wr%x ctrl %x",
   'A' + bcs->channel, which, bcs->hw.hdlc.ctrl.ctrl);
 if (bcs->cs->subtyp == AVM_FRITZ_PCI) {
  WriteHDLCPCI(bcs->cs, bcs->channel, HDLC_STATUS, bcs->hw.hdlc.ctrl.ctrl);
 } else {
  if (which & 4)
   WriteHDLCPnP(bcs->cs, bcs->channel, HDLC_STATUS + 2,
    bcs->hw.hdlc.ctrl.sr.mode);
  if (which & 2)
   WriteHDLCPnP(bcs->cs, bcs->channel, HDLC_STATUS + 1,
    bcs->hw.hdlc.ctrl.sr.xml);
  if (which & 1)
   WriteHDLCPnP(bcs->cs, bcs->channel, HDLC_STATUS,
    bcs->hw.hdlc.ctrl.sr.cmd);
 }
}
