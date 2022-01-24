#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bfi_ioc_attr {int /*<<< orphan*/  asic_rev; int /*<<< orphan*/  pcie_lanes_orig; int /*<<< orphan*/  pcie_lanes; int /*<<< orphan*/  pcie_gen; int /*<<< orphan*/  adapter_prop; int /*<<< orphan*/  card_type; int /*<<< orphan*/  vpd; } ;
struct bfa_mfg_vpd {int dummy; } ;
struct bfa_ioc {struct bfi_ioc_attr* attr; } ;
struct bfa_adapter_attr {int prototype; int /*<<< orphan*/  hw_ver; int /*<<< orphan*/  asic_rev; int /*<<< orphan*/  pcie_lanes_orig; int /*<<< orphan*/  pcie_lanes; int /*<<< orphan*/  pcie_gen; int /*<<< orphan*/  mac; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  is_mezz; int /*<<< orphan*/  card_type; int /*<<< orphan*/  model_descr; int /*<<< orphan*/  model; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  nports; int /*<<< orphan*/  vpd; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  optrom_ver; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  serial_num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC13(struct bfa_ioc *ioc,
			 struct bfa_adapter_attr *ad_attr)
{
	struct bfi_ioc_attr *ioc_attr;

	ioc_attr = ioc->attr;

	FUNC5(ioc, ad_attr->serial_num);
	FUNC1(ioc, ad_attr->fw_ver);
	FUNC4(ioc, ad_attr->optrom_ver);
	FUNC2(ioc, ad_attr->manufacturer);
	FUNC12(&ad_attr->vpd, &ioc_attr->vpd,
		      sizeof(struct bfa_mfg_vpd));

	ad_attr->nports = FUNC6(ioc);
	ad_attr->max_speed = FUNC9(ioc);

	FUNC3(ioc, ad_attr->model);
	/* For now, model descr uses same model string */
	FUNC3(ioc, ad_attr->model_descr);

	ad_attr->card_type = ioc_attr->card_type;
	ad_attr->is_mezz = FUNC10(ioc_attr->card_type);

	if (FUNC0(ioc_attr->adapter_prop))
		ad_attr->prototype = 1;
	else
		ad_attr->prototype = 0;

	ad_attr->pwwn = FUNC8(ioc);
	ad_attr->mac  = FUNC11(ioc);

	ad_attr->pcie_gen = ioc_attr->pcie_gen;
	ad_attr->pcie_lanes = ioc_attr->pcie_lanes;
	ad_attr->pcie_lanes_orig = ioc_attr->pcie_lanes_orig;
	ad_attr->asic_rev = ioc_attr->asic_rev;

	FUNC7(ioc, ad_attr->hw_ver);
}