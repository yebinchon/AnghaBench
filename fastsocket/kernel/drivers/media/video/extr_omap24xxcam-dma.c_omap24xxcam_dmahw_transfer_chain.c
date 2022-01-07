
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAMDMA_CCR (int) ;
 int CAMDMA_CCR_ENABLE ;
 int CAMDMA_CLNK_CTRL (int) ;
 int CAMDMA_CLNK_CTRL_ENABLE_LNK ;
 int NUM_CAMDMA_CHANNELS ;
 int omap24xxcam_dmahw_transfer_start (unsigned long,int) ;
 int omap24xxcam_reg_in (unsigned long,int ) ;
 int omap24xxcam_reg_out (unsigned long,int ,int) ;

__attribute__((used)) static void omap24xxcam_dmahw_transfer_chain(unsigned long base, int dmach,
          int free_dmach)
{
 int prev_dmach, ch;

 if (dmach == 0)
  prev_dmach = NUM_CAMDMA_CHANNELS - 1;
 else
  prev_dmach = dmach - 1;
 omap24xxcam_reg_out(base, CAMDMA_CLNK_CTRL(prev_dmach),
       CAMDMA_CLNK_CTRL_ENABLE_LNK | dmach);



 ch = (dmach + free_dmach) % NUM_CAMDMA_CHANNELS;
 while (!(omap24xxcam_reg_in(base, CAMDMA_CCR(ch))
   & CAMDMA_CCR_ENABLE)) {
  if (ch == dmach) {





   omap24xxcam_dmahw_transfer_start(base, dmach);
   break;
  } else
   ch = (ch + 1) % NUM_CAMDMA_CHANNELS;
 }
}
