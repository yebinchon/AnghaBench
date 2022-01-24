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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(uint32_t vtermno, char *buf, int cnt)
{
	static unsigned char q[sizeof(unsigned long) * 2]
		__attribute__((aligned(sizeof(unsigned long))));
	static int qlen = 0;
	u64 got;

again:
	if (qlen) {
		if (qlen > cnt) {
			FUNC1(buf, q, cnt);
			qlen -= cnt;
			FUNC2(q + cnt, q, qlen);
			return cnt;
		} else {	/* qlen <= cnt */
			int	r;

			FUNC1(buf, q, qlen);
			r = qlen;
			qlen = 0;
			return r;
		}
	}
	if (FUNC0(vtermno, &got,
		((u64 *)q), ((u64 *)q) + 1) == 0) {
		qlen = got;
		goto again;
	}
	return 0;
}