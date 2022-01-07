
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_attr {int asic_rev; int pcie_lanes_orig; int pcie_lanes; int pcie_gen; int adapter_prop; int card_type; int vpd; } ;
struct bfa_mfg_vpd {int dummy; } ;
struct bfa_ioc {struct bfi_ioc_attr* attr; } ;
struct bfa_adapter_attr {int prototype; int hw_ver; int asic_rev; int pcie_lanes_orig; int pcie_lanes; int pcie_gen; int mac; int pwwn; int is_mezz; int card_type; int model_descr; int model; int max_speed; int nports; int vpd; int manufacturer; int optrom_ver; int fw_ver; int serial_num; } ;


 scalar_t__ BFI_ADAPTER_IS_SPECIAL (int ) ;
 int bfa_ioc_get_adapter_fw_ver (struct bfa_ioc*,int ) ;
 int bfa_ioc_get_adapter_manufacturer (struct bfa_ioc*,int ) ;
 int bfa_ioc_get_adapter_model (struct bfa_ioc*,int ) ;
 int bfa_ioc_get_adapter_optrom_ver (struct bfa_ioc*,int ) ;
 int bfa_ioc_get_adapter_serial_num (struct bfa_ioc*,int ) ;
 int bfa_ioc_get_nports (struct bfa_ioc*) ;
 int bfa_ioc_get_pci_chip_rev (struct bfa_ioc*,int ) ;
 int bfa_ioc_get_pwwn (struct bfa_ioc*) ;
 int bfa_ioc_speed_sup (struct bfa_ioc*) ;
 int bfa_mfg_is_mezz (int ) ;
 int bfa_nw_ioc_get_mac (struct bfa_ioc*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
bfa_ioc_get_adapter_attr(struct bfa_ioc *ioc,
    struct bfa_adapter_attr *ad_attr)
{
 struct bfi_ioc_attr *ioc_attr;

 ioc_attr = ioc->attr;

 bfa_ioc_get_adapter_serial_num(ioc, ad_attr->serial_num);
 bfa_ioc_get_adapter_fw_ver(ioc, ad_attr->fw_ver);
 bfa_ioc_get_adapter_optrom_ver(ioc, ad_attr->optrom_ver);
 bfa_ioc_get_adapter_manufacturer(ioc, ad_attr->manufacturer);
 memcpy(&ad_attr->vpd, &ioc_attr->vpd,
        sizeof(struct bfa_mfg_vpd));

 ad_attr->nports = bfa_ioc_get_nports(ioc);
 ad_attr->max_speed = bfa_ioc_speed_sup(ioc);

 bfa_ioc_get_adapter_model(ioc, ad_attr->model);

 bfa_ioc_get_adapter_model(ioc, ad_attr->model_descr);

 ad_attr->card_type = ioc_attr->card_type;
 ad_attr->is_mezz = bfa_mfg_is_mezz(ioc_attr->card_type);

 if (BFI_ADAPTER_IS_SPECIAL(ioc_attr->adapter_prop))
  ad_attr->prototype = 1;
 else
  ad_attr->prototype = 0;

 ad_attr->pwwn = bfa_ioc_get_pwwn(ioc);
 ad_attr->mac = bfa_nw_ioc_get_mac(ioc);

 ad_attr->pcie_gen = ioc_attr->pcie_gen;
 ad_attr->pcie_lanes = ioc_attr->pcie_lanes;
 ad_attr->pcie_lanes_orig = ioc_attr->pcie_lanes_orig;
 ad_attr->asic_rev = ioc_attr->asic_rev;

 bfa_ioc_get_pci_chip_rev(ioc, ad_attr->hw_ver);
}
