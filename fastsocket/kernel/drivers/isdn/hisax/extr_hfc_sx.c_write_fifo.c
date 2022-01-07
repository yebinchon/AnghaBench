
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int len; int* data; } ;
struct hfcsx_extra {unsigned short* marker; } ;
struct TYPE_3__ {int b_fifo_size; scalar_t__ base; scalar_t__ extra; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {int debug; TYPE_2__ hw; } ;


 int D_FIFO_SIZE ;
 int HFCSX_FIF_DWR ;
 int HFCSX_FIF_F1 ;
 int HFCSX_FIF_F2 ;
 int HFCSX_FIF_INCF1 ;
 int HFCSX_FIF_Z1H ;
 int HFCSX_FIF_Z1L ;
 int HFCSX_FIF_Z2H ;
 int HFCSX_FIF_Z2L ;
 int L1_DEB_ISAC_FIFO ;
 int MAX_B_FRAMES ;
 int MAX_D_FRAMES ;
 int Read_hfc (struct IsdnCardState*,int ) ;
 int Write_hfc (struct IsdnCardState*,int ,int ) ;
 int bytein (scalar_t__) ;
 int debugl1 (struct IsdnCardState*,char*,int,...) ;
 int fifo_select (struct IsdnCardState*,int) ;
 int udelay (int) ;

__attribute__((used)) static int
write_fifo(struct IsdnCardState *cs, struct sk_buff *skb, u_char fifo, int trans_max)
{
       unsigned short *msp;
        int fifo_size, count, z1, z2;
 u_char f_msk, f1, f2, *src;

 if (skb->len <= 0) return(0);
        if (fifo & 1) return(0);

 fifo_select(cs, fifo);
 if (fifo & 4) {
   fifo_size = D_FIFO_SIZE;
   f_msk = MAX_D_FRAMES;
   if (trans_max) return(0);
 }
 else {
   fifo_size = cs->hw.hfcsx.b_fifo_size;
   f_msk = MAX_B_FRAMES;
 }

        z1 = Read_hfc(cs, HFCSX_FIF_Z1H);
 z1 = ((z1 << 8) | Read_hfc(cs, HFCSX_FIF_Z1L));


 if (trans_max) {
   z2 = Read_hfc(cs, HFCSX_FIF_Z2H);
   z2 = ((z2 << 8) | Read_hfc(cs, HFCSX_FIF_Z2L));
   count = z2 - z1;
   if (count <= 0)
     count += fifo_size;
   if (count < skb->len+1) return(0);
   count = fifo_size - count;
   if (count > 2 * trans_max) return(0);
   count = skb->len;
   src = skb->data;
   while (count--)
     Write_hfc(cs, HFCSX_FIF_DWR, *src++);
   return(1);
 }

        msp = ((struct hfcsx_extra *)(cs->hw.hfcsx.extra))->marker;
 msp += (((fifo >> 1) & 3) * (MAX_B_FRAMES+1));
 f1 = Read_hfc(cs, HFCSX_FIF_F1) & f_msk;
 f2 = Read_hfc(cs, HFCSX_FIF_F2) & f_msk;

 count = f1 - f2;
 if (count < 0)
  count += (f_msk + 1);
 if (count > f_msk-1) {
   if (cs->debug & L1_DEB_ISAC_FIFO)
     debugl1(cs, "hfcsx_write_fifo %d more as %d frames",fifo,f_msk-1);
   return(0);
 }

 *(msp + f1) = z1;

 if (cs->debug & L1_DEB_ISAC_FIFO)
  debugl1(cs, "hfcsx_write_fifo %d f1(%x) f2(%x) z1(f1)(%x)",
   fifo, f1, f2, z1);

 count = *(msp + f2) - z1;
 if (count <= 0)
   count += fifo_size;

 if (cs->debug & L1_DEB_ISAC_FIFO)
   debugl1(cs, "hfcsx_write_fifo %d count(%ld/%d)",
    fifo, skb->len, count);
 if (count < skb->len) {
   if (cs->debug & L1_DEB_ISAC_FIFO)
     debugl1(cs, "hfcsx_write_fifo %d no fifo mem", fifo);
   return(0);
 }

 count = skb->len;
 src = skb->data;
 while (count--)
   Write_hfc(cs, HFCSX_FIF_DWR, *src++);

 Read_hfc(cs, HFCSX_FIF_INCF1);
 udelay(1);
 while (bytein(cs->hw.hfcsx.base+1) & 1);
 return(1);
}
