
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bfi_ioc_image_hdr {scalar_t__ signature; int bootenv; } ;
struct bfa_ioc {int dummy; } ;


 scalar_t__ bfa_cb_image_get_chunk (int ,int ) ;
 int bfa_ioc_asic_gen (struct bfa_ioc*) ;
 int bfa_nw_ioc_fwver_cmp (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ;
 int bfa_nw_ioc_fwver_get (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ;
 scalar_t__ swab32 (int ) ;

__attribute__((used)) static bool
bfa_ioc_fwver_valid(struct bfa_ioc *ioc, u32 boot_env)
{
 struct bfi_ioc_image_hdr fwhdr, *drv_fwhdr;

 bfa_nw_ioc_fwver_get(ioc, &fwhdr);
 drv_fwhdr = (struct bfi_ioc_image_hdr *)
  bfa_cb_image_get_chunk(bfa_ioc_asic_gen(ioc), 0);

 if (fwhdr.signature != drv_fwhdr->signature)
  return 0;

 if (swab32(fwhdr.bootenv) != boot_env)
  return 0;

 return bfa_nw_ioc_fwver_cmp(ioc, &fwhdr);
}
