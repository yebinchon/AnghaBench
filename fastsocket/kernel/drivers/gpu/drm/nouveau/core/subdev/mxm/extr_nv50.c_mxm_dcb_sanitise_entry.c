
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nouveau_mxm {int dummy; } ;
struct nouveau_bios {int* data; } ;
struct TYPE_2__ {int outp_type; int conn_type; int dig_conn; int ddc_port; } ;
struct context {int* outp; TYPE_1__ desc; } ;


 int DCB_CONNECTOR_DVI_D ;
 int DCB_CONNECTOR_HDMI_1 ;
 int DCB_CONNECTOR_eDP ;
 int DCB_OUTPUT_DP ;
 int dcb_conn (struct nouveau_bios*,int,int*,int*) ;
 int mxm_ddc_map (struct nouveau_bios*,int ) ;
 int mxm_match_dcb ;
 int mxm_sor_map (struct nouveau_bios*,int ) ;
 scalar_t__ mxms_foreach (struct nouveau_mxm*,int,int ,struct context*) ;
 int mxms_version (struct nouveau_mxm*) ;
 struct nouveau_mxm* nouveau_mxm (struct nouveau_bios*) ;
 int nv_debug (struct nouveau_mxm*,char*,int,int,int) ;

__attribute__((used)) static int
mxm_dcb_sanitise_entry(struct nouveau_bios *bios, void *data, int idx, u16 pdcb)
{
 struct nouveau_mxm *mxm = nouveau_mxm(bios);
 struct context ctx = { .outp = (u32 *)(bios->data + pdcb) };
 u8 type, i2cidx, link, ver, len;
 u8 *conn;




 if (mxms_foreach(mxm, 0x01, mxm_match_dcb, &ctx)) {
  nv_debug(mxm, "disable %d: 0x%08x 0x%08x\n",
   idx, ctx.outp[0], ctx.outp[1]);
  ctx.outp[0] |= 0x0000000f;
  return 0;
 }





 i2cidx = mxm_ddc_map(bios, ctx.desc.ddc_port);
 if ((ctx.outp[0] & 0x0000000f) != DCB_OUTPUT_DP)
  i2cidx = (i2cidx & 0x0f) << 4;
 else
  i2cidx = (i2cidx & 0xf0);

 if (i2cidx != 0xf0) {
  ctx.outp[0] &= ~0x000000f0;
  ctx.outp[0] |= i2cidx;
 }


 switch (ctx.desc.outp_type) {
 case 0x00:
 case 0x01:
  break;
 default:
  link = mxm_sor_map(bios, ctx.desc.dig_conn) & 0x30;
  ctx.outp[1] &= ~0x00000030;
  ctx.outp[1] |= link;
  break;
 }
 conn = bios->data;
 conn += dcb_conn(bios, (ctx.outp[0] & 0x0000f000) >> 12, &ver, &len);
 type = conn[0];
 switch (ctx.desc.conn_type) {
 case 0x01:
  ctx.outp[1] |= 0x00000004;

  break;
 case 0x02:
  type = DCB_CONNECTOR_HDMI_1;
  break;
 case 0x03:
  type = DCB_CONNECTOR_DVI_D;
  break;
 case 0x0e:
  ctx.outp[1] |= 0x00010000;
 case 0x07:
  ctx.outp[1] |= 0x00000004;
  type = DCB_CONNECTOR_eDP;
  break;
 default:
  break;
 }

 if (mxms_version(mxm) >= 0x0300)
  conn[0] = type;

 return 0;
}
