
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct nouveau_mxm {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct TYPE_2__ {int outp_type; int conn_type; int dig_conn; } ;
struct context {int* outp; TYPE_1__ desc; } ;


 int mxm_match_tmds_partner ;
 int mxm_sor_map (struct nouveau_bios*,int ) ;
 scalar_t__ mxms_foreach (struct nouveau_mxm*,int,int ,struct context*) ;
 int mxms_output_device (struct nouveau_mxm*,int*,TYPE_1__*) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_mxm*) ;

__attribute__((used)) static bool
mxm_match_dcb(struct nouveau_mxm *mxm, u8 *data, void *info)
{
 struct nouveau_bios *bios = nouveau_bios(mxm);
 struct context *ctx = info;
 u64 desc = *(u64 *)data;

 mxms_output_device(mxm, data, &ctx->desc);


 if ((ctx->outp[0] & 0x0000000f) != ctx->desc.outp_type)
  return 1;





 if ((desc & 0x00000000000000f0) >= 0x20) {

  u8 link = mxm_sor_map(bios, ctx->desc.dig_conn);
  if ((ctx->outp[0] & 0x0f000000) != (link & 0x0f) << 24)
   return 1;


  link = (link & 0x30) >> 4;
  if ((link & ((ctx->outp[1] & 0x00000030) >> 4)) != link)
   return 1;
 }






 data[0] &= ~0xf0;
 if (ctx->desc.outp_type == 6 && ctx->desc.conn_type == 6 &&
     mxms_foreach(mxm, 0x01, mxm_match_tmds_partner, ctx)) {
  data[0] |= 0x20;
 } else {
  data[0] |= 0xf0;
 }

 return 0;
}
