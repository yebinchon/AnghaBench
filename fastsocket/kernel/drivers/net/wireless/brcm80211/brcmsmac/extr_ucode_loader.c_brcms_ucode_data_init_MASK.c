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
struct brcms_ucode {int /*<<< orphan*/  bcm43xx_bomminor; int /*<<< orphan*/  bcm43xx_bommajor; int /*<<< orphan*/  bcm43xx_24_lcnsz; int /*<<< orphan*/  bcm43xx_24_lcn; int /*<<< orphan*/  bcm43xx_16_mimosz; int /*<<< orphan*/  bcm43xx_16_mimo; int /*<<< orphan*/  d11n0initvals16; int /*<<< orphan*/  d11n0bsinitvals16; int /*<<< orphan*/  d11n0absinitvals16; int /*<<< orphan*/  d11lcn2initvals24; int /*<<< orphan*/  d11lcn2bsinitvals24; int /*<<< orphan*/  d11lcn1initvals24; int /*<<< orphan*/  d11lcn1bsinitvals24; int /*<<< orphan*/  d11lcn0initvals24; int /*<<< orphan*/  d11lcn0bsinitvals24; } ;
struct brcms_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D11LCN0BSINITVALS24 ; 
 int /*<<< orphan*/  D11LCN0INITVALS24 ; 
 int /*<<< orphan*/  D11LCN1BSINITVALS24 ; 
 int /*<<< orphan*/  D11LCN1INITVALS24 ; 
 int /*<<< orphan*/  D11LCN2BSINITVALS24 ; 
 int /*<<< orphan*/  D11LCN2INITVALS24 ; 
 int /*<<< orphan*/  D11N0ABSINITVALS16 ; 
 int /*<<< orphan*/  D11N0BSINITVALS16 ; 
 int /*<<< orphan*/  D11N0INITVALS16 ; 
 int /*<<< orphan*/  D11UCODE_OVERSIGHT16_MIMO ; 
 int /*<<< orphan*/  D11UCODE_OVERSIGHT16_MIMOSZ ; 
 int /*<<< orphan*/  D11UCODE_OVERSIGHT24_LCN ; 
 int /*<<< orphan*/  D11UCODE_OVERSIGHT24_LCNSZ ; 
 int /*<<< orphan*/  D11UCODE_OVERSIGHT_BOMMAJOR ; 
 int /*<<< orphan*/  D11UCODE_OVERSIGHT_BOMMINOR ; 
 int FUNC0 (struct brcms_info*) ; 
 int FUNC1 (struct brcms_info*,void**,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct brcms_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct brcms_info *wl, struct brcms_ucode *ucode)
{
	int rc;

	rc = FUNC0(wl);

	rc = rc < 0 ? rc :
		FUNC1(wl, (void **)&ucode->d11lcn0bsinitvals24,
				     D11LCN0BSINITVALS24);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->d11lcn0initvals24,
				       D11LCN0INITVALS24);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->d11lcn1bsinitvals24,
				       D11LCN1BSINITVALS24);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->d11lcn1initvals24,
				       D11LCN1INITVALS24);
	rc = rc < 0 ? rc :
		FUNC1(wl, (void **)&ucode->d11lcn2bsinitvals24,
				     D11LCN2BSINITVALS24);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->d11lcn2initvals24,
				       D11LCN2INITVALS24);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->d11n0absinitvals16,
				       D11N0ABSINITVALS16);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->d11n0bsinitvals16,
				       D11N0BSINITVALS16);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->d11n0initvals16,
				       D11N0INITVALS16);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->bcm43xx_16_mimo,
				       D11UCODE_OVERSIGHT16_MIMO);
	rc = rc < 0 ?
	     rc : FUNC2(wl, &ucode->bcm43xx_16_mimosz,
					D11UCODE_OVERSIGHT16_MIMOSZ);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->bcm43xx_24_lcn,
				       D11UCODE_OVERSIGHT24_LCN);
	rc = rc < 0 ?
	     rc : FUNC2(wl, &ucode->bcm43xx_24_lcnsz,
					D11UCODE_OVERSIGHT24_LCNSZ);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->bcm43xx_bommajor,
				       D11UCODE_OVERSIGHT_BOMMAJOR);
	rc = rc < 0 ?
	     rc : FUNC1(wl, (void **)&ucode->bcm43xx_bomminor,
				       D11UCODE_OVERSIGHT_BOMMINOR);
	return rc;
}