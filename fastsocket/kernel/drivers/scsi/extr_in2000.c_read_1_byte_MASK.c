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
typedef  int uchar ;
struct IN2000_hostdata {int dummy; } ;

/* Variables and functions */
 int ASR_DBR ; 
 int ASR_INT ; 
 int CTRL_EDI ; 
 int CTRL_IDI ; 
 int CTRL_POLLED ; 
 int FUNC0 () ; 
 int WD_CMD_TRANS_INFO ; 
 int /*<<< orphan*/  WD_CONTROL ; 
 int /*<<< orphan*/  WD_DATA ; 
 int FUNC1 (struct IN2000_hostdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IN2000_hostdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IN2000_hostdata*,int) ; 

__attribute__((used)) static uchar FUNC4(struct IN2000_hostdata *hostdata)
{
	uchar asr, x = 0;

	FUNC2(hostdata, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_POLLED);
	FUNC3(hostdata, WD_CMD_TRANS_INFO | 0x80);
	do {
		asr = FUNC0();
		if (asr & ASR_DBR)
			x = FUNC1(hostdata, WD_DATA);
	} while (!(asr & ASR_INT));
	return x;
}