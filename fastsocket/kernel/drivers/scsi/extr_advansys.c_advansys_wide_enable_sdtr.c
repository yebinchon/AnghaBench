
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AdvPortAddr ;


 int ASC_MC_SDTR_ABLE ;
 int ASC_MC_SDTR_DONE ;
 int AdvReadWordLram (int ,int ,unsigned short) ;
 int AdvWriteWordLram (int ,int ,unsigned short) ;

__attribute__((used)) static void
advansys_wide_enable_sdtr(AdvPortAddr iop_base, unsigned short tidmask)
{
 unsigned short cfg_word;
 AdvReadWordLram(iop_base, ASC_MC_SDTR_ABLE, cfg_word);
 if ((cfg_word & tidmask) != 0)
  return;

 cfg_word |= tidmask;
 AdvWriteWordLram(iop_base, ASC_MC_SDTR_ABLE, cfg_word);





 AdvReadWordLram(iop_base, ASC_MC_SDTR_DONE, cfg_word);
 cfg_word &= ~tidmask;
 AdvWriteWordLram(iop_base, ASC_MC_SDTR_DONE, cfg_word);
}
