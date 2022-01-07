
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_CH2_BTM_STRT_ADD_LUMA ;
 int VPIF_CH2_TOP_STRT_ADD_LUMA ;
 int VPIF_CH3_BTM_STRT_ADD_CHROMA ;
 int VPIF_CH3_TOP_STRT_ADD_CHROMA ;
 int regw (unsigned long,int ) ;

__attribute__((used)) static inline void ch2_set_videobuf_addr_yc_nmux(unsigned long top_strt_luma,
       unsigned long btm_strt_luma,
       unsigned long top_strt_chroma,
       unsigned long btm_strt_chroma)
{
 regw(top_strt_luma, VPIF_CH2_TOP_STRT_ADD_LUMA);
 regw(btm_strt_luma, VPIF_CH2_BTM_STRT_ADD_LUMA);
 regw(top_strt_chroma, VPIF_CH3_TOP_STRT_ADD_CHROMA);
 regw(btm_strt_chroma, VPIF_CH3_BTM_STRT_ADD_CHROMA);
}
