
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ hsync_pol; } ;
struct TYPE_6__ {int type; TYPE_1__ vfe_pol; } ;
struct TYPE_5__ {int field_per_buff; int img_y; int img_height; int img_x; int img_width; scalar_t__ odd_even; } ;
struct zoran {TYPE_3__ card; int stat_com; TYPE_2__ jpg_settings; struct tvnorm* timing; } ;
struct tvnorm {int Ht; int VStart; int HSyncStart; int Wt; int HStart; } ;
typedef enum zoran_codec_mode { ____Placeholder_zoran_codec_mode } zoran_codec_mode ;


 int BUZ ;




 int ZR36057_FHAP ;
 int ZR36057_FHAP_NAX ;
 int ZR36057_FHAP_PAX ;
 int ZR36057_FPP ;
 int ZR36057_FPP_Odd_Even ;
 int ZR36057_FVAP ;
 int ZR36057_FVAP_NAY ;
 int ZR36057_FVAP_PAY ;
 int ZR36057_HSP ;
 int ZR36057_HSP_HsyncStart ;
 int ZR36057_HSP_LineTot ;
 int ZR36057_JCBA ;
 int ZR36057_JCFT ;
 int ZR36057_JMC ;
 int ZR36057_JMC_Fld_per_buff ;
 int ZR36057_JMC_JPG ;
 int ZR36057_JMC_JPGCmpMode ;
 int ZR36057_JMC_JPGExpMode ;
 int ZR36057_JMC_MJPGCmpMode ;
 int ZR36057_JMC_MJPGExpMode ;
 int ZR36057_JMC_SyncMstr ;
 int ZR36057_JPC ;
 int ZR36057_VFEHCR ;
 int ZR36057_VFEHCR_HSPol ;
 int ZR36057_VFEVCR ;
 int ZR36057_VFEVCR_VSPol ;
 int ZR36057_VSP ;
 int ZR36057_VSP_FrmTot ;
 int ZR36057_VSP_VsyncSize ;
 int btand (int ,int ) ;
 int btor (int ,int ) ;
 int btwrite (int,int ) ;
 int virt_to_bus (int ) ;
 int zr36057_adjust_vfe (struct zoran*,int) ;

__attribute__((used)) static void
zr36057_set_jpg (struct zoran *zr,
   enum zoran_codec_mode mode)
{
 struct tvnorm *tvn;
 u32 reg;

 tvn = zr->timing;


 btwrite(0, ZR36057_JPC);


 switch (mode) {

 case 131:
 default:
  reg = ZR36057_JMC_MJPGCmpMode;
  break;

 case 130:
  reg = ZR36057_JMC_MJPGExpMode;
  reg |= ZR36057_JMC_SyncMstr;


  break;

 case 129:
  reg = ZR36057_JMC_JPGCmpMode;
  break;

 case 128:
  reg = ZR36057_JMC_JPGExpMode;
  break;

 }
 reg |= ZR36057_JMC_JPG;
 if (zr->jpg_settings.field_per_buff == 1)
  reg |= ZR36057_JMC_Fld_per_buff;
 btwrite(reg, ZR36057_JMC);


 btor(ZR36057_VFEVCR_VSPol, ZR36057_VFEVCR);
 reg = (6 << ZR36057_VSP_VsyncSize) |
       (tvn->Ht << ZR36057_VSP_FrmTot);
 btwrite(reg, ZR36057_VSP);
 reg = ((zr->jpg_settings.img_y + tvn->VStart) << ZR36057_FVAP_NAY) |
       (zr->jpg_settings.img_height << ZR36057_FVAP_PAY);
 btwrite(reg, ZR36057_FVAP);


 if (zr->card.vfe_pol.hsync_pol)
  btor(ZR36057_VFEHCR_HSPol, ZR36057_VFEHCR);
 else
  btand(~ZR36057_VFEHCR_HSPol, ZR36057_VFEHCR);
 reg = ((tvn->HSyncStart) << ZR36057_HSP_HsyncStart) |
       (tvn->Wt << ZR36057_HSP_LineTot);
 btwrite(reg, ZR36057_HSP);
 reg = ((zr->jpg_settings.img_x +
  tvn->HStart + 4) << ZR36057_FHAP_NAX) |
       (zr->jpg_settings.img_width << ZR36057_FHAP_PAX);
 btwrite(reg, ZR36057_FHAP);


 if (zr->jpg_settings.odd_even)
  reg = ZR36057_FPP_Odd_Even;
 else
  reg = 0;

 btwrite(reg, ZR36057_FPP);





 reg = virt_to_bus(zr->stat_com);
 btwrite(reg, ZR36057_JCBA);



 switch (mode) {

 case 129:
 case 131:
  if (zr->card.type != BUZ)
   reg = 140;
  else
   reg = 60;
  break;

 case 128:
 case 130:
  reg = 20;
  break;

 default:
  reg = 80;
  break;

 }
 btwrite(reg, ZR36057_JCFT);
 zr36057_adjust_vfe(zr, mode);

}
