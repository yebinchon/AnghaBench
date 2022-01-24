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
struct atm_dev {int dummy; } ;
struct TYPE_2__ {int loop_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDR ; 
 TYPE_1__* FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
#define  __ATM_LM_ATM 130 
#define  __ATM_LM_NONE 129 
#define  __ATM_LM_PHY 128 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 unsigned char uPD98402_MDR_ALP ; 
 unsigned char uPD98402_MDR_RPLP ; 
 unsigned char uPD98402_MDR_TPLP ; 

__attribute__((used)) static int FUNC5(struct atm_dev *dev,int mode)
{
	unsigned char mode_reg;

	mode_reg = FUNC0(MDR) & ~(uPD98402_MDR_TPLP | uPD98402_MDR_ALP |
	    uPD98402_MDR_RPLP);
	switch (FUNC3(mode)) {
		case __ATM_LM_NONE:
			break;
		case __ATM_LM_PHY:
			mode_reg |= uPD98402_MDR_TPLP;
			break;
		case __ATM_LM_ATM:
			mode_reg |= uPD98402_MDR_ALP;
			break;
		default:
			return -EINVAL;
	}
	switch (FUNC4(mode)) {
		case __ATM_LM_NONE:
			break;
		case __ATM_LM_PHY:
			mode_reg |= uPD98402_MDR_RPLP;
			break;
		default:
			return -EINVAL;
	}
	FUNC2(mode_reg,MDR);
	FUNC1(dev)->loop_mode = mode;
	return 0;
}