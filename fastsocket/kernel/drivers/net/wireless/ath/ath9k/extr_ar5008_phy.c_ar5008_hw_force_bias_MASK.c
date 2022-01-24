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
typedef  int u16 ;
struct ath_hw {int /*<<< orphan*/  analogBank6Data; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int*) ; 
 struct ath_common* FUNC5 (struct ath_hw*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah, u16 synth_freq)
{
	struct ath_common *common = FUNC5(ah);
	u32 tmp_reg;
	int reg_writes = 0;
	u32 new_bias = 0;

	if (!FUNC0(ah) || synth_freq >= 3000)
		return;

	FUNC2(FUNC1(ah));

	if (synth_freq < 2412)
		new_bias = 0;
	else if (synth_freq < 2422)
		new_bias = 1;
	else
		new_bias = 2;

	/* pre-reverse this field */
	tmp_reg = FUNC6(new_bias, 3);

	FUNC7(common, CONFIG, "Force rf_pwd_icsyndiv to %1d on %4d\n",
		new_bias, synth_freq);

	/* swizzle rf_pwd_icsyndiv */
	FUNC3(ah->analogBank6Data, tmp_reg, 3, 181, 3);

	/* write Bank 6 with new params */
	FUNC4(ah, &reg_writes);
}