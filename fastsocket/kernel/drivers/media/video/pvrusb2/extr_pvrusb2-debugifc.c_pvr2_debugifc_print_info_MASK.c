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
struct pvr2_hdw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_hdw*) ; 
 int FUNC1 (struct pvr2_hdw*,char*,unsigned int) ; 
 int FUNC2 (char*,unsigned int,char*,...) ; 

int FUNC3(struct pvr2_hdw *hdw,char *buf,unsigned int acnt)
{
	int bcnt = 0;
	int ccnt;
	ccnt = FUNC2(buf, acnt, "Driver hardware description: %s\n",
			 FUNC0(hdw));
	bcnt += ccnt; acnt -= ccnt; buf += ccnt;
	ccnt = FUNC2(buf,acnt,"Driver state info:\n");
	bcnt += ccnt; acnt -= ccnt; buf += ccnt;
	ccnt = FUNC1(hdw,buf,acnt);
	bcnt += ccnt; acnt -= ccnt; buf += ccnt;

	return bcnt;
}