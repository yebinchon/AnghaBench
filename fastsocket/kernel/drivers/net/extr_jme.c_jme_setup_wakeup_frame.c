
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int dummy; } ;


 int JME_WFODP ;
 int JME_WFOI ;
 int WAKEUP_FRAME_MASK_DWNR ;
 int WFOI_CRC_SEL ;
 int WFOI_FRAME_SEL ;
 int WFOI_MASK_SEL ;
 int WFOI_MASK_SHIFT ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void
jme_setup_wakeup_frame(struct jme_adapter *jme,
  u32 *mask, u32 crc, int fnr)
{
 int i;




 jwrite32(jme, JME_WFOI, WFOI_CRC_SEL | (fnr & WFOI_FRAME_SEL));
 wmb();
 jwrite32(jme, JME_WFODP, crc);
 wmb();




 for (i = 0 ; i < WAKEUP_FRAME_MASK_DWNR ; ++i) {
  jwrite32(jme, JME_WFOI,
    ((i << WFOI_MASK_SHIFT) & WFOI_MASK_SEL) |
    (fnr & WFOI_FRAME_SEL));
  wmb();
  jwrite32(jme, JME_WFODP, mask[i]);
  wmb();
 }
}
