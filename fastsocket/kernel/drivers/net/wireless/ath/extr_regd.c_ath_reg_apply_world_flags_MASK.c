#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct ath_regulatory {TYPE_1__* regpair; } ;
typedef  enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;
struct TYPE_2__ {int regDmnEnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiphy*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,int) ; 

__attribute__((used)) static void FUNC2(struct wiphy *wiphy,
				      enum nl80211_reg_initiator initiator,
				      struct ath_regulatory *reg)
{
	switch (reg->regpair->regDmnEnum) {
	case 0x60:
	case 0x63:
	case 0x66:
	case 0x67:
	case 0x6C:
		FUNC1(wiphy, initiator);
		break;
	case 0x68:
		FUNC1(wiphy, initiator);
		FUNC0(wiphy, initiator);
		break;
	}
}