
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct zoran {int norm; TYPE_1__ card; } ;
typedef enum zoran_codec_mode { ____Placeholder_zoran_codec_mode } zoran_codec_mode ;





 int LML33R10 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int ZR36057_VFEHCR ;
 int ZR36057_VFESPFR ;
 int ZR36057_VFESPFR_ExtFl ;
 int btand (int ,int ) ;
 int btor (int ,int ) ;
 int btread (int ) ;
 int btwrite (int,int ) ;

__attribute__((used)) static void
zr36057_adjust_vfe (struct zoran *zr,
      enum zoran_codec_mode mode)
{
 u32 reg;

 switch (mode) {
 case 128:
  btand(~ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
  reg = btread(ZR36057_VFEHCR);
  if ((reg & (1 << 10)) && zr->card.type != LML33R10) {
   reg += ((1 << 10) | 1);
  }
  btwrite(reg, ZR36057_VFEHCR);
  break;
 case 129:
 case 130:
 default:
  if ((zr->norm & V4L2_STD_NTSC) ||
      (zr->card.type == LML33R10 &&
       (zr->norm & V4L2_STD_PAL)))
   btand(~ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
  else
   btor(ZR36057_VFESPFR_ExtFl, ZR36057_VFESPFR);
  reg = btread(ZR36057_VFEHCR);
  if (!(reg & (1 << 10)) && zr->card.type != LML33R10) {
   reg -= ((1 << 10) | 1);
  }
  btwrite(reg, ZR36057_VFEHCR);
  break;
 }
}
