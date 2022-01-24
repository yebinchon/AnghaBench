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
struct bttv_geometry {int vtc; int hscale; int vscale; int width; int hdelay; int sheight; int vdelay; int crop; int vtotal; scalar_t__ comb; } ;
struct bttv {int dummy; } ;

/* Variables and functions */
 scalar_t__ BT848_E_CROP ; 
 scalar_t__ BT848_E_HACTIVE_LO ; 
 scalar_t__ BT848_E_HDELAY_LO ; 
 scalar_t__ BT848_E_HSCALE_HI ; 
 scalar_t__ BT848_E_HSCALE_LO ; 
 scalar_t__ BT848_E_VACTIVE_LO ; 
 scalar_t__ BT848_E_VDELAY_LO ; 
 scalar_t__ BT848_E_VSCALE_HI ; 
 scalar_t__ BT848_E_VSCALE_LO ; 
 scalar_t__ BT848_E_VTC ; 
 int /*<<< orphan*/  BT848_VSCALE_COMB ; 
 scalar_t__ BT848_VTOTAL_HI ; 
 scalar_t__ BT848_VTOTAL_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct bttv *btv, struct bttv_geometry *geo, int odd)
{
	int off = odd ? 0x80 : 0x00;

	if (geo->comb)
		FUNC2(BT848_VSCALE_COMB, BT848_E_VSCALE_HI+off);
	else
		FUNC0(~BT848_VSCALE_COMB, BT848_E_VSCALE_HI+off);

	FUNC3(geo->vtc,             BT848_E_VTC+off);
	FUNC3(geo->hscale >> 8,     BT848_E_HSCALE_HI+off);
	FUNC3(geo->hscale & 0xff,   BT848_E_HSCALE_LO+off);
	FUNC1((geo->vscale>>8), 0xe0, BT848_E_VSCALE_HI+off);
	FUNC3(geo->vscale & 0xff,   BT848_E_VSCALE_LO+off);
	FUNC3(geo->width & 0xff,    BT848_E_HACTIVE_LO+off);
	FUNC3(geo->hdelay & 0xff,   BT848_E_HDELAY_LO+off);
	FUNC3(geo->sheight & 0xff,  BT848_E_VACTIVE_LO+off);
	FUNC3(geo->vdelay & 0xff,   BT848_E_VDELAY_LO+off);
	FUNC3(geo->crop,            BT848_E_CROP+off);
	FUNC3(geo->vtotal>>8,       BT848_VTOTAL_HI);
	FUNC3(geo->vtotal & 0xff,   BT848_VTOTAL_LO);
}