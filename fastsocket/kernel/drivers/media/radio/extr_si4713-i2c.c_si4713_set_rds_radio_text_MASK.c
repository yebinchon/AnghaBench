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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  radio_text; } ;
struct si4713_device {int /*<<< orphan*/  mutex; TYPE_1__ rds_info; int /*<<< orphan*/  power_state; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RDS_RADIO_TEXT ; 
 int /*<<< orphan*/  RDS_BLOCK_CLEAR ; 
 int /*<<< orphan*/  RDS_BLOCK_LOAD ; 
 char RDS_CARRIAGE_RETURN ; 
 char RDS_RADIOTEXT_2A ; 
 int RDS_RADIOTEXT_BLK_SIZE ; 
 int RDS_RADIOTEXT_INDEX_MAX ; 
 int /*<<< orphan*/  FUNC0 (char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct si4713_device *sdev, char *rt)
{
	int rval = 0, i;
	u16 t_index = 0;
	u8 b_index = 0, cr_inserted = 0;
	s8 left;

	FUNC1(&sdev->mutex);

	if (!sdev->power_state)
		goto copy;

	rval = FUNC3(sdev, RDS_BLOCK_CLEAR, 0, 0, 0, &left);
	if (rval < 0)
		goto unlock;

	if (!FUNC4(rt))
		goto copy;

	do {
		/* RDS spec says that if the last block isn't used,
		 * then apply a carriage return
		 */
		if (t_index < (RDS_RADIOTEXT_INDEX_MAX *
			RDS_RADIOTEXT_BLK_SIZE)) {
			for (i = 0; i < RDS_RADIOTEXT_BLK_SIZE; i++) {
				if (!rt[t_index + i] || rt[t_index + i] ==
					RDS_CARRIAGE_RETURN) {
					rt[t_index + i] = RDS_CARRIAGE_RETURN;
					cr_inserted = 1;
					break;
				}
			}
		}

		rval = FUNC3(sdev, RDS_BLOCK_LOAD,
				FUNC0(RDS_RADIOTEXT_2A, b_index++),
				FUNC0(rt[t_index], rt[t_index + 1]),
				FUNC0(rt[t_index + 2], rt[t_index + 3]),
				&left);
		if (rval < 0)
			goto unlock;

		t_index += RDS_RADIOTEXT_BLK_SIZE;

		if (cr_inserted)
			break;
	} while (left > 0);

copy:
	FUNC5(sdev->rds_info.radio_text, rt, MAX_RDS_RADIO_TEXT);

unlock:
	FUNC2(&sdev->mutex);
	return rval;
}