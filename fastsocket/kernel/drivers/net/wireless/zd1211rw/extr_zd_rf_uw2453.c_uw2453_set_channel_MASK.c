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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct zd_rf {int dummy; } ;
struct zd_ioreq16 {int member_1; int /*<<< orphan*/  member_0; } ;
struct zd_chip {int dummy; } ;
struct TYPE_2__ {int config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq16 const*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UW2453_AUTOCAL_VCO_CFG ; 
 TYPE_1__* FUNC2 (struct zd_rf*) ; 
#define  ZD_CR12 133 
 int /*<<< orphan*/  ZD_CR203 ; 
#define  ZD_CR77 132 
#define  ZD_CR78 131 
#define  ZD_CR79 130 
#define  ZD_CR80 129 
#define  ZD_CR81 128 
 int FUNC3 (struct zd_chip*) ; 
 int FUNC4 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** uw2453_std_vco_cfg ; 
 int FUNC5 (struct zd_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct zd_chip*,struct zd_ioreq16 const*,int /*<<< orphan*/ ) ; 
 struct zd_chip* FUNC9 (struct zd_rf*) ; 

__attribute__((used)) static int FUNC10(struct zd_rf *rf, u8 channel)
{
	int r;
	u16 vco_cfg;
	int config = FUNC2(rf)->config;
	bool autocal = (config == -1);
	struct zd_chip *chip = FUNC9(rf);

	static const struct zd_ioreq16 ioreqs[] = {
		{ ZD_CR80,  0x30 }, { ZD_CR81,  0x30 }, { ZD_CR79,  0x58 },
		{ ZD_CR12,  0xf0 }, { ZD_CR77,  0x1b }, { ZD_CR78,  0x58 },
	};

	r = FUNC5(chip, channel, autocal);
	if (r)
		return r;

	if (autocal)
		vco_cfg = UW2453_AUTOCAL_VCO_CFG;
	else
		vco_cfg = uw2453_std_vco_cfg[config][FUNC1(channel)];

	r = FUNC6(chip, vco_cfg);
	if (r)
		return r;

	r = FUNC3(chip);
	if (r)
		return r;

	r = FUNC8(chip, ioreqs, FUNC0(ioreqs));
	if (r)
		return r;

	r = FUNC4(chip, channel);
	if (r)
		return r;

	return FUNC7(chip, 0x06, ZD_CR203);
}