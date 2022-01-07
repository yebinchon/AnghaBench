
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_CH2_BTM_STRT_ADD_VANC ;
 int VPIF_CH2_TOP_STRT_ADD_VANC ;
 int regw (unsigned long,int ) ;

__attribute__((used)) static inline void ch2_set_vbi_addr(unsigned long top_strt_luma,
      unsigned long btm_strt_luma,
      unsigned long top_strt_chroma,
      unsigned long btm_strt_chroma)
{
 regw(top_strt_luma, VPIF_CH2_TOP_STRT_ADD_VANC);
 regw(btm_strt_luma, VPIF_CH2_BTM_STRT_ADD_VANC);
}
