
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fw; int fh_l; int fh_h; int sl; int bpp; int pfs; int npb; int sat; int nsb; } ;
struct TYPE_5__ {int bpp; int pfs; int npb; int sat; int ofs0; int ofs1; int ofs2; int ofs3; int wid0; int wid1; int wid2; int wid3; } ;
union chan_param_mem {TYPE_1__ pp; TYPE_2__ ip; } ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u32 ;
struct TYPE_6__ {int dev; } ;
 int dev_err (int ,char*,int) ;
 int ipu_ch_param_set_plane_offset (union chan_param_mem*,int,int) ;
 TYPE_3__ ipu_data ;

__attribute__((used)) static void ipu_ch_param_set_size(union chan_param_mem *params,
      uint32_t pixel_fmt, uint16_t width,
      uint16_t height, uint16_t stride)
{
 u32 u_offset;
 u32 v_offset;

 params->pp.fw = width - 1;
 params->pp.fh_l = height - 1;
 params->pp.fh_h = (height - 1) >> 8;
 params->pp.sl = stride - 1;

 switch (pixel_fmt) {
 case 138:

  params->pp.bpp = 3;
  params->pp.pfs = 7;
  params->pp.npb = 31;
  params->pp.sat = 2;
  break;
 case 137:

  params->pp.bpp = 0;
  params->pp.pfs = 7;
  params->pp.npb = 7;
  params->pp.sat = 2;
  break;
 case 134:
  params->ip.bpp = 2;
  params->ip.pfs = 4;
  params->ip.npb = 7;
  params->ip.sat = 2;
  params->ip.ofs0 = 0;
  params->ip.ofs1 = 5;
  params->ip.ofs2 = 11;
  params->ip.ofs3 = 16;
  params->ip.wid0 = 4;
  params->ip.wid1 = 5;
  params->ip.wid2 = 4;
  break;
 case 141:
  params->ip.bpp = 1;
  params->ip.pfs = 4;
  params->ip.npb = 7;
  params->ip.sat = 2;
  params->ip.ofs0 = 0;
  params->ip.ofs1 = 8;
  params->ip.ofs2 = 16;
  params->ip.ofs3 = 24;
  params->ip.wid0 = 7;
  params->ip.wid1 = 7;
  params->ip.wid2 = 7;
  break;
 case 136:
  params->ip.bpp = 1;
  params->ip.pfs = 4;
  params->ip.npb = 7;
  params->ip.sat = 2;
  params->ip.ofs0 = 16;
  params->ip.ofs1 = 8;
  params->ip.ofs2 = 0;
  params->ip.ofs3 = 24;
  params->ip.wid0 = 7;
  params->ip.wid1 = 7;
  params->ip.wid2 = 7;
  break;
 case 139:
 case 140:
  params->ip.bpp = 0;
  params->ip.pfs = 4;
  params->ip.npb = 7;
  params->ip.sat = 2;
  params->ip.ofs0 = 8;
  params->ip.ofs1 = 16;
  params->ip.ofs2 = 24;
  params->ip.ofs3 = 0;
  params->ip.wid0 = 7;
  params->ip.wid1 = 7;
  params->ip.wid2 = 7;
  params->ip.wid3 = 7;
  break;
 case 133:
 case 135:
  params->ip.bpp = 0;
  params->ip.pfs = 4;
  params->ip.npb = 7;
  params->ip.sat = 2;
  params->ip.ofs0 = 24;
  params->ip.ofs1 = 16;
  params->ip.ofs2 = 8;
  params->ip.ofs3 = 0;
  params->ip.wid0 = 7;
  params->ip.wid1 = 7;
  params->ip.wid2 = 7;
  params->ip.wid3 = 7;
  break;
 case 142:
  params->ip.bpp = 0;
  params->ip.pfs = 4;
  params->ip.npb = 7;
  params->ip.sat = 2;
  params->ip.ofs0 = 8;
  params->ip.ofs1 = 16;
  params->ip.ofs2 = 24;
  params->ip.ofs3 = 0;
  params->ip.wid0 = 7;
  params->ip.wid1 = 7;
  params->ip.wid2 = 7;
  params->ip.wid3 = 7;
  break;
 case 132:
  params->ip.bpp = 2;
  params->ip.pfs = 6;
  params->ip.npb = 7;
  params->ip.sat = 2;
  break;
 case 130:
 case 131:
  params->ip.bpp = 3;
  params->ip.pfs = 3;
  params->ip.npb = 7;
  params->ip.sat = 2;
  u_offset = stride * height;
  v_offset = u_offset + u_offset / 4;
  ipu_ch_param_set_plane_offset(params, u_offset, v_offset);
  break;
 case 128:
  params->ip.bpp = 3;
  params->ip.pfs = 2;
  params->ip.npb = 7;
  params->ip.sat = 2;
  v_offset = stride * height;
  u_offset = v_offset + v_offset / 2;
  ipu_ch_param_set_plane_offset(params, u_offset, v_offset);
  break;
 case 129:
  params->ip.bpp = 3;
  params->ip.pfs = 2;
  params->ip.npb = 7;
  params->ip.sat = 2;
  u_offset = stride * height;
  v_offset = u_offset + u_offset / 2;
  ipu_ch_param_set_plane_offset(params, u_offset, v_offset);
  break;
 default:
  dev_err(ipu_data.dev,
   "mx3 ipu: unimplemented pixel format %d\n", pixel_fmt);
  break;
 }

 params->pp.nsb = 1;
}
