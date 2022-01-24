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
struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  TDA9874A_DIC ; 
 int /*<<< orphan*/  TDA9874A_SIC ; 
 int FUNC0 (struct CHIPSTATE*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int tda9874a_dic ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct CHIPSTATE *chip)
{
	struct v4l2_subdev *sd = &chip->sd;
	int dic,sic;	/* device id. and software id. codes */

	if(-1 == (dic = FUNC0(chip,TDA9874A_DIC)))
		return 0;
	if(-1 == (sic = FUNC0(chip,TDA9874A_SIC)))
		return 0;

	FUNC1(1, debug, sd, "tda9874a_checkit(): DIC=0x%X, SIC=0x%X.\n", dic, sic);

	if((dic == 0x11)||(dic == 0x07)) {
		FUNC2(sd, "found tda9874%s.\n", (dic == 0x11) ? "a" : "h");
		tda9874a_dic = dic;	/* remember device id. */
		return 1;
	}
	return 0;	/* not found */
}