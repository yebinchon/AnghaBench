
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int osd_chroma_key; int osd_chroma_key_state; int osd_local_alpha_state; int osd_global_alpha; int osd_global_alpha_state; } ;


 int CX2341X_OSD_SET_CHROMA_KEY ;
 int CX2341X_OSD_SET_GLOBAL_ALPHA ;
 int ivtv_vapi (struct ivtv*,int ,int,int ,int ,...) ;

void ivtv_set_osd_alpha(struct ivtv *itv)
{
 ivtv_vapi(itv, CX2341X_OSD_SET_GLOBAL_ALPHA, 3,
  itv->osd_global_alpha_state, itv->osd_global_alpha, !itv->osd_local_alpha_state);
 ivtv_vapi(itv, CX2341X_OSD_SET_CHROMA_KEY, 2, itv->osd_chroma_key_state, itv->osd_chroma_key);
}
