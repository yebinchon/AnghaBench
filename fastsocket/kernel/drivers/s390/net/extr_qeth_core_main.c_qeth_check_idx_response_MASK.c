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
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  QETH_DBF_CTRL_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned char,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card,
	unsigned char *buffer)
{
	if (!buffer)
		return 0;

	FUNC0(CTRL, 2, buffer, QETH_DBF_CTRL_LEN);
	if ((buffer[2] & 0xc0) == 0xc0) {
		FUNC1(2, "received an IDX TERMINATE "
			   "with cause code 0x%02x%s\n",
			   buffer[4],
			   ((buffer[4] == 0x22) ?
			    " -- try another portname" : ""));
		FUNC2(TRACE, 2, "ckidxres");
		FUNC2(TRACE, 2, " idxterm");
		FUNC3(TRACE, 2, "  rc%d", -EIO);
		if (buffer[4] == 0xf6) {
			FUNC4(&card->gdev->dev,
			"The qeth device is not configured "
			"for the OSI layer required by z/VM\n");
			return -EPERM;
		}
		return -EIO;
	}
	return 0;
}