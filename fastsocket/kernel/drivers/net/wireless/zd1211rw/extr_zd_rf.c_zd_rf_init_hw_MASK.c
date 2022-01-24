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
typedef  int u8 ;
struct zd_rf {int type; int (* init_hw ) (struct zd_rf*) ;} ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
#define  AL2230S_RF 133 
#define  AL2230_RF 132 
#define  AL7230B_RF 131 
 int ENODEV ; 
#define  MAXIM_NEW_RF 130 
#define  RF2959_RF 129 
#define  UW2453_RF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zd_rf*) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_chip*) ; 
 int FUNC5 (struct zd_chip*) ; 
 int FUNC6 (struct zd_chip*) ; 
 int FUNC7 (struct zd_rf*) ; 
 int FUNC8 (struct zd_rf*) ; 
 int FUNC9 (struct zd_rf*) ; 
 int FUNC10 (struct zd_rf*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct zd_chip* FUNC12 (struct zd_rf*) ; 

int FUNC13(struct zd_rf *rf, u8 type)
{
	int r = 0;
	int t;
	struct zd_chip *chip = FUNC12(rf);

	FUNC0(FUNC2(&chip->mutex));
	switch (type) {
	case RF2959_RF:
		r = FUNC9(rf);
		break;
	case AL2230_RF:
	case AL2230S_RF:
		r = FUNC7(rf);
		break;
	case AL7230B_RF:
		r = FUNC8(rf);
		break;
	case MAXIM_NEW_RF:
	case UW2453_RF:
		r = FUNC10(rf);
		break;
	default:
		FUNC1(FUNC4(chip),
			"RF %s %#x is not supported\n", FUNC11(type), type);
		rf->type = 0;
		return -ENODEV;
	}

	if (r)
		return r;

	rf->type = type;

	r = FUNC5(chip);
	if (r)
		return r;
	t = rf->init_hw(rf);
	r = FUNC6(chip);
	if (t)
		r = t;
	return r;
}