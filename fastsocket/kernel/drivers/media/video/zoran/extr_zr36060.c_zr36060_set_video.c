
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zr36060 {int width; int height; int total_code_vol; int real_code_vol; int max_block_vol; int name; } ;
struct videocodec {scalar_t__ data; } ;
struct vfe_settings {int x; int y; int width; int height; int decimation; int quality; } ;
struct vfe_polarity {scalar_t__ vclk_pol; scalar_t__ pvalid_pol; scalar_t__ poe_pol; scalar_t__ subimg_pol; scalar_t__ blank_pol; scalar_t__ field_pol; int hsync_pol; int vsync_pol; } ;
struct tvnorm {int Ht; int Wt; int VStart; int Ha; int HStart; scalar_t__ Wa; } ;


 int ZR060_AAR_HEND_HI ;
 int ZR060_AAR_HEND_LO ;
 int ZR060_AAR_HSTART_HI ;
 int ZR060_AAR_HSTART_LO ;
 int ZR060_AAR_VEND_HI ;
 int ZR060_AAR_VEND_LO ;
 int ZR060_AAR_VSTART_HI ;
 int ZR060_AAR_VSTART_LO ;
 int ZR060_BCR_U ;
 int ZR060_BCR_V ;
 int ZR060_BCR_Y ;
 int ZR060_LOAD ;
 int ZR060_LOAD_SyncRst ;
 int ZR060_MBCVR ;
 int ZR060_SGR_BHEND_HI ;
 int ZR060_SGR_BHEND_LO ;
 int ZR060_SGR_BHSTART ;
 int ZR060_SGR_BVEND_HI ;
 int ZR060_SGR_BVEND_LO ;
 int ZR060_SGR_BVSTART ;
 int ZR060_SGR_HSYNC ;
 int ZR060_SGR_HTOTAL_HI ;
 int ZR060_SGR_HTOTAL_LO ;
 int ZR060_SGR_VSYNC ;
 int ZR060_SGR_VTOTAL_HI ;
 int ZR060_SGR_VTOTAL_LO ;
 int ZR060_SR ;
 int ZR060_SR_HScale2 ;
 int ZR060_SR_HScale4 ;
 int ZR060_SR_VScale ;
 int ZR060_SWR_HEND_HI ;
 int ZR060_SWR_HEND_LO ;
 int ZR060_SWR_HSTART_HI ;
 int ZR060_SWR_HSTART_LO ;
 int ZR060_SWR_VEND_HI ;
 int ZR060_SWR_VEND_LO ;
 int ZR060_SWR_VSTART_HI ;
 int ZR060_SWR_VSTART_LO ;
 int ZR060_VPR ;
 int ZR060_VPR_BLPol ;
 int ZR060_VPR_FIPol ;
 int ZR060_VPR_HSPol ;
 int ZR060_VPR_PValPol ;
 int ZR060_VPR_PoePol ;
 int ZR060_VPR_SImgPol ;
 int ZR060_VPR_VCLKPol ;
 int ZR060_VPR_VSPol ;
 int dprintk (int,char*,int ,int,int,int,int,int) ;
 scalar_t__ low_bitrate ;
 int zr36060_write (struct zr36060*,int ,int) ;

__attribute__((used)) static int
zr36060_set_video (struct videocodec *codec,
     struct tvnorm *norm,
     struct vfe_settings *cap,
     struct vfe_polarity *pol)
{
 struct zr36060 *ptr = (struct zr36060 *) codec->data;
 u32 reg;
 int size;

 dprintk(2, "%s: set_video %d/%d-%dx%d (%%%d) call\n", ptr->name,
  cap->x, cap->y, cap->width, cap->height, cap->decimation);




 ptr->width = cap->width / (cap->decimation & 0xff);
 ptr->height = cap->height / (cap->decimation >> 8);

 zr36060_write(ptr, ZR060_LOAD, ZR060_LOAD_SyncRst);






 reg = (!pol->vsync_pol ? ZR060_VPR_VSPol : 0)
     | (!pol->hsync_pol ? ZR060_VPR_HSPol : 0)
     | (pol->field_pol ? ZR060_VPR_FIPol : 0)
     | (pol->blank_pol ? ZR060_VPR_BLPol : 0)
     | (pol->subimg_pol ? ZR060_VPR_SImgPol : 0)
     | (pol->poe_pol ? ZR060_VPR_PoePol : 0)
     | (pol->pvalid_pol ? ZR060_VPR_PValPol : 0)
     | (pol->vclk_pol ? ZR060_VPR_VCLKPol : 0);
 zr36060_write(ptr, ZR060_VPR, reg);

 reg = 0;
 switch (cap->decimation & 0xff) {
 default:
 case 1:
  break;

 case 2:
  reg |= ZR060_SR_HScale2;
  break;

 case 4:
  reg |= ZR060_SR_HScale4;
  break;
 }

 switch (cap->decimation >> 8) {
 default:
 case 1:
  break;

 case 2:
  reg |= ZR060_SR_VScale;
  break;
 }
 zr36060_write(ptr, ZR060_SR, reg);

 zr36060_write(ptr, ZR060_BCR_Y, 0x00);
 zr36060_write(ptr, ZR060_BCR_U, 0x80);
 zr36060_write(ptr, ZR060_BCR_V, 0x80);



 reg = norm->Ht - 1;
 zr36060_write(ptr, ZR060_SGR_VTOTAL_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SGR_VTOTAL_LO, (reg >> 0) & 0xff);

 reg = norm->Wt - 1;
 zr36060_write(ptr, ZR060_SGR_HTOTAL_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SGR_HTOTAL_LO, (reg >> 0) & 0xff);

 reg = 6 - 1;
 zr36060_write(ptr, ZR060_SGR_VSYNC, reg);



 reg = 68;
 zr36060_write(ptr, ZR060_SGR_HSYNC, reg);

 reg = norm->VStart - 1;
 zr36060_write(ptr, ZR060_SGR_BVSTART, reg);

 reg += norm->Ha / 2;
 zr36060_write(ptr, ZR060_SGR_BVEND_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SGR_BVEND_LO, (reg >> 0) & 0xff);

 reg = norm->HStart - 1;
 zr36060_write(ptr, ZR060_SGR_BHSTART, reg);

 reg += norm->Wa;
 zr36060_write(ptr, ZR060_SGR_BHEND_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SGR_BHEND_LO, (reg >> 0) & 0xff);


 reg = cap->y + norm->VStart;
 zr36060_write(ptr, ZR060_AAR_VSTART_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_AAR_VSTART_LO, (reg >> 0) & 0xff);

 reg += cap->height;
 zr36060_write(ptr, ZR060_AAR_VEND_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_AAR_VEND_LO, (reg >> 0) & 0xff);

 reg = cap->x + norm->HStart;
 zr36060_write(ptr, ZR060_AAR_HSTART_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_AAR_HSTART_LO, (reg >> 0) & 0xff);

 reg += cap->width;
 zr36060_write(ptr, ZR060_AAR_HEND_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_AAR_HEND_LO, (reg >> 0) & 0xff);


 reg = norm->VStart - 4;
 zr36060_write(ptr, ZR060_SWR_VSTART_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SWR_VSTART_LO, (reg >> 0) & 0xff);

 reg += norm->Ha / 2 + 8;
 zr36060_write(ptr, ZR060_SWR_VEND_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SWR_VEND_LO, (reg >> 0) & 0xff);

 reg = norm->HStart - 4;
 zr36060_write(ptr, ZR060_SWR_HSTART_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SWR_HSTART_LO, (reg >> 0) & 0xff);

 reg += norm->Wa + 8;
 zr36060_write(ptr, ZR060_SWR_HEND_HI, (reg >> 8) & 0xff);
 zr36060_write(ptr, ZR060_SWR_HEND_LO, (reg >> 0) & 0xff);

 size = ptr->width * ptr->height;

 size = size * 16;





 size = size * cap->quality / (low_bitrate ? 400 : 200);

 if (size < 8192)
  size = 8192;

 if (size > ptr->total_code_vol * 7)
  size = ptr->total_code_vol * 7;

 ptr->real_code_vol = size >> 3;




 reg = ptr->max_block_vol;
 zr36060_write(ptr, ZR060_MBCVR, reg);

 return 0;
}
