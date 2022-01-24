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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ps_name; } ;
struct si4713_device {int /*<<< orphan*/  mutex; TYPE_1__ rds_info; scalar_t__ power_state; } ;

/* Variables and functions */
 int DEFAULT_RDS_PS_REPEAT_COUNT ; 
 int MAX_RDS_PS_NAME ; 
 int RDS_BLOCK ; 
 int /*<<< orphan*/  SI4713_TX_RDS_PS_MESSAGE_COUNT ; 
 int /*<<< orphan*/  SI4713_TX_RDS_PS_REPEAT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct si4713_device*,int,char*) ; 
 int FUNC5 (struct si4713_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(struct si4713_device *sdev, char *ps_name)
{
	int rval = 0, i;
	u8 len = 0;

	/* We want to clear the whole thing */
	if (!FUNC6(ps_name))
		FUNC0(ps_name, 0, MAX_RDS_PS_NAME + 1);

	FUNC1(&sdev->mutex);

	if (sdev->power_state) {
		/* Write the new ps name and clear the padding */
		for (i = 0; i < MAX_RDS_PS_NAME; i += (RDS_BLOCK / 2)) {
			rval = FUNC4(sdev, (i / (RDS_BLOCK / 2)),
						ps_name + i);
			if (rval < 0)
				goto unlock;
		}

		/* Setup the size to be sent */
		if (FUNC6(ps_name))
			len = FUNC6(ps_name) - 1;
		else
			len = 1;

		rval = FUNC5(sdev,
				SI4713_TX_RDS_PS_MESSAGE_COUNT,
				FUNC3(len));
		if (rval < 0)
			goto unlock;

		rval = FUNC5(sdev,
				SI4713_TX_RDS_PS_REPEAT_COUNT,
				DEFAULT_RDS_PS_REPEAT_COUNT * 2);
		if (rval < 0)
			goto unlock;
	}

	FUNC7(sdev->rds_info.ps_name, ps_name, MAX_RDS_PS_NAME);

unlock:
	FUNC2(&sdev->mutex);
	return rval;
}