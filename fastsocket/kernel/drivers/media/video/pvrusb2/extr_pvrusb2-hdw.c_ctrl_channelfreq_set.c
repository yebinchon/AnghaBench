
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {unsigned int freqProgSlot; int* freqTable; unsigned int freqSlotRadio; unsigned int freqSlotTelevision; scalar_t__ freqSelector; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;


 unsigned int FREQTABLE_SIZE ;

__attribute__((used)) static int ctrl_channelfreq_set(struct pvr2_ctrl *cptr,int m,int v)
{
 struct pvr2_hdw *hdw = cptr->hdw;
 unsigned int slotId = hdw->freqProgSlot;
 if ((slotId > 0) && (slotId <= FREQTABLE_SIZE)) {
  hdw->freqTable[slotId-1] = v;



  if (hdw->freqSelector) {
   if (hdw->freqSlotRadio == slotId) {
    hdw->freqSlotRadio = 0;
   }
  } else {
   if (hdw->freqSlotTelevision == slotId) {
    hdw->freqSlotTelevision = 0;
   }
  }
 }
 return 0;
}
