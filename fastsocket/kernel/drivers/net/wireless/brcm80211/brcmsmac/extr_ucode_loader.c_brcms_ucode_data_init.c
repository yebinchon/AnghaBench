
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_ucode {int bcm43xx_bomminor; int bcm43xx_bommajor; int bcm43xx_24_lcnsz; int bcm43xx_24_lcn; int bcm43xx_16_mimosz; int bcm43xx_16_mimo; int d11n0initvals16; int d11n0bsinitvals16; int d11n0absinitvals16; int d11lcn2initvals24; int d11lcn2bsinitvals24; int d11lcn1initvals24; int d11lcn1bsinitvals24; int d11lcn0initvals24; int d11lcn0bsinitvals24; } ;
struct brcms_info {int dummy; } ;


 int D11LCN0BSINITVALS24 ;
 int D11LCN0INITVALS24 ;
 int D11LCN1BSINITVALS24 ;
 int D11LCN1INITVALS24 ;
 int D11LCN2BSINITVALS24 ;
 int D11LCN2INITVALS24 ;
 int D11N0ABSINITVALS16 ;
 int D11N0BSINITVALS16 ;
 int D11N0INITVALS16 ;
 int D11UCODE_OVERSIGHT16_MIMO ;
 int D11UCODE_OVERSIGHT16_MIMOSZ ;
 int D11UCODE_OVERSIGHT24_LCN ;
 int D11UCODE_OVERSIGHT24_LCNSZ ;
 int D11UCODE_OVERSIGHT_BOMMAJOR ;
 int D11UCODE_OVERSIGHT_BOMMINOR ;
 int brcms_check_firmwares (struct brcms_info*) ;
 int brcms_ucode_init_buf (struct brcms_info*,void**,int ) ;
 int brcms_ucode_init_uint (struct brcms_info*,int *,int ) ;

int brcms_ucode_data_init(struct brcms_info *wl, struct brcms_ucode *ucode)
{
 int rc;

 rc = brcms_check_firmwares(wl);

 rc = rc < 0 ? rc :
  brcms_ucode_init_buf(wl, (void **)&ucode->d11lcn0bsinitvals24,
         D11LCN0BSINITVALS24);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->d11lcn0initvals24,
           D11LCN0INITVALS24);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->d11lcn1bsinitvals24,
           D11LCN1BSINITVALS24);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->d11lcn1initvals24,
           D11LCN1INITVALS24);
 rc = rc < 0 ? rc :
  brcms_ucode_init_buf(wl, (void **)&ucode->d11lcn2bsinitvals24,
         D11LCN2BSINITVALS24);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->d11lcn2initvals24,
           D11LCN2INITVALS24);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->d11n0absinitvals16,
           D11N0ABSINITVALS16);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->d11n0bsinitvals16,
           D11N0BSINITVALS16);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->d11n0initvals16,
           D11N0INITVALS16);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->bcm43xx_16_mimo,
           D11UCODE_OVERSIGHT16_MIMO);
 rc = rc < 0 ?
      rc : brcms_ucode_init_uint(wl, &ucode->bcm43xx_16_mimosz,
     D11UCODE_OVERSIGHT16_MIMOSZ);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->bcm43xx_24_lcn,
           D11UCODE_OVERSIGHT24_LCN);
 rc = rc < 0 ?
      rc : brcms_ucode_init_uint(wl, &ucode->bcm43xx_24_lcnsz,
     D11UCODE_OVERSIGHT24_LCNSZ);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->bcm43xx_bommajor,
           D11UCODE_OVERSIGHT_BOMMAJOR);
 rc = rc < 0 ?
      rc : brcms_ucode_init_buf(wl, (void **)&ucode->bcm43xx_bomminor,
           D11UCODE_OVERSIGHT_BOMMINOR);
 return rc;
}
