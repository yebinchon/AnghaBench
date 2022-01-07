
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_mxm {int dummy; } ;
struct nouveau_bios {int dummy; } ;


 int dcb_outp_foreach (struct nouveau_bios*,int *,int ) ;
 int dcb_table (struct nouveau_bios*,int*,int*,int*,int*) ;
 int mxm_dcb_sanitise_entry ;
 int mxm_show_unmatched ;
 int mxms_foreach (struct nouveau_mxm*,int,int ,int *) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_mxm*) ;
 int nv_debug (struct nouveau_mxm*,char*) ;

__attribute__((used)) static void
mxm_dcb_sanitise(struct nouveau_mxm *mxm)
{
 struct nouveau_bios *bios = nouveau_bios(mxm);
 u8 ver, hdr, cnt, len;
 u16 dcb = dcb_table(bios, &ver, &hdr, &cnt, &len);
 if (dcb == 0x0000 || ver != 0x40) {
  nv_debug(mxm, "unsupported DCB version\n");
  return;
 }

 dcb_outp_foreach(bios, ((void*)0), mxm_dcb_sanitise_entry);
 mxms_foreach(mxm, 0x01, mxm_show_unmatched, ((void*)0));
}
