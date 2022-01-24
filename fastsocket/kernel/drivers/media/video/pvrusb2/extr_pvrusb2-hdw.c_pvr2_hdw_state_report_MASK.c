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
struct pvr2_hdw {int /*<<< orphan*/  big_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct pvr2_hdw*,char*,unsigned int) ; 
 unsigned int FUNC3 (struct pvr2_hdw*,unsigned int,char*,unsigned int) ; 

unsigned int FUNC4(struct pvr2_hdw *hdw,
				   char *buf,unsigned int acnt)
{
	unsigned int bcnt,ccnt,idx;
	bcnt = 0;
	FUNC1(hdw->big_lock);
	for (idx = 0; ; idx++) {
		ccnt = FUNC3(hdw,idx,buf,acnt);
		if (!ccnt) break;
		bcnt += ccnt; acnt -= ccnt; buf += ccnt;
		if (!acnt) break;
		buf[0] = '\n'; ccnt = 1;
		bcnt += ccnt; acnt -= ccnt; buf += ccnt;
	}
	ccnt = FUNC2(hdw, buf, acnt);
	bcnt += ccnt; acnt -= ccnt; buf += ccnt;
	FUNC0(hdw->big_lock);
	return bcnt;
}