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
struct b44 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_CAM_CTRL ; 
 int /*<<< orphan*/  B44_CAM_DATA_HI ; 
 int /*<<< orphan*/  B44_CAM_DATA_LO ; 
 int /*<<< orphan*/  CAM_CTRL_BUSY ; 
 int CAM_CTRL_INDEX_SHIFT ; 
 int CAM_CTRL_READ ; 
 int /*<<< orphan*/  FUNC0 (struct b44*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct b44 *bp, unsigned char *data, int index)
{
	u32 val;

	FUNC2(bp, B44_CAM_CTRL, (CAM_CTRL_READ |
			    (index << CAM_CTRL_INDEX_SHIFT)));

	FUNC0(bp, B44_CAM_CTRL, CAM_CTRL_BUSY, 100, 1);

	val = FUNC1(bp, B44_CAM_DATA_LO);

	data[2] = (val >> 24) & 0xFF;
	data[3] = (val >> 16) & 0xFF;
	data[4] = (val >> 8) & 0xFF;
	data[5] = (val >> 0) & 0xFF;

	val = FUNC1(bp, B44_CAM_DATA_HI);

	data[0] = (val >> 8) & 0xFF;
	data[1] = (val >> 0) & 0xFF;
}