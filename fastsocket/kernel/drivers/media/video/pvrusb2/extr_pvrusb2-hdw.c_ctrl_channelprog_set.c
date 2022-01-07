
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int freqProgSlot; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;


 int FREQTABLE_SIZE ;

__attribute__((used)) static int ctrl_channelprog_set(struct pvr2_ctrl *cptr,int m,int v)
{
 struct pvr2_hdw *hdw = cptr->hdw;
 if ((v >= 0) && (v <= FREQTABLE_SIZE)) {
  hdw->freqProgSlot = v;
 }
 return 0;
}
