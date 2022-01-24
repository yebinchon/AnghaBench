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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct rc_dev {struct nvt_dev* priv; } ;
struct nvt_dev {int dummy; } ;
typedef  int carrier ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_CC ; 
 int /*<<< orphan*/  CIR_CP ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rc_dev *dev, u32 carrier)
{
	struct nvt_dev *nvt = dev->priv;
	u16 val;

	FUNC1(nvt, 1, CIR_CP);
	val = 3000000 / (carrier) - 1;
	FUNC1(nvt, val & 0xff, CIR_CC);

	FUNC2("cp: 0x%x cc: 0x%x\n",
		FUNC0(nvt, CIR_CP), FUNC0(nvt, CIR_CC));

	return 0;
}