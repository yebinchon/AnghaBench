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
typedef  int u32 ;
struct rt2x00_dev {scalar_t__ intf_associated; } ;
struct link_qual {int rssi; int vgc_level_reg; int vgc_level; int false_cca; } ;

/* Variables and functions */
 scalar_t__ RT2560_VERSION_D ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,struct link_qual*,int) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev,
				 struct link_qual *qual, const u32 count)
{
	/*
	 * To prevent collisions with MAC ASIC on chipsets
	 * up to version C the link tuning should halt after 20
	 * seconds while being associated.
	 */
	if (FUNC1(rt2x00dev) < RT2560_VERSION_D &&
	    rt2x00dev->intf_associated && count > 20)
		return;

	/*
	 * Chipset versions C and lower should directly continue
	 * to the dynamic CCA tuning. Chipset version D and higher
	 * should go straight to dynamic CCA tuning when they
	 * are not associated.
	 */
	if (FUNC1(rt2x00dev) < RT2560_VERSION_D ||
	    !rt2x00dev->intf_associated)
		goto dynamic_cca_tune;

	/*
	 * A too low RSSI will cause too much false CCA which will
	 * then corrupt the R17 tuning. To remidy this the tuning should
	 * be stopped (While making sure the R17 value will not exceed limits)
	 */
	if (qual->rssi < -80 && count > 20) {
		if (qual->vgc_level_reg >= 0x41)
			FUNC0(rt2x00dev, qual, qual->vgc_level);
		return;
	}

	/*
	 * Special big-R17 for short distance
	 */
	if (qual->rssi >= -58) {
		FUNC0(rt2x00dev, qual, 0x50);
		return;
	}

	/*
	 * Special mid-R17 for middle distance
	 */
	if (qual->rssi >= -74) {
		FUNC0(rt2x00dev, qual, 0x41);
		return;
	}

	/*
	 * Leave short or middle distance condition, restore r17
	 * to the dynamic tuning range.
	 */
	if (qual->vgc_level_reg >= 0x41) {
		FUNC0(rt2x00dev, qual, qual->vgc_level);
		return;
	}

dynamic_cca_tune:

	/*
	 * R17 is inside the dynamic tuning range,
	 * start tuning the link based on the false cca counter.
	 */
	if (qual->false_cca > 512 && qual->vgc_level_reg < 0x40)
		FUNC0(rt2x00dev, qual, ++qual->vgc_level_reg);
	else if (qual->false_cca < 100 && qual->vgc_level_reg > 0x32)
		FUNC0(rt2x00dev, qual, --qual->vgc_level_reg);
}