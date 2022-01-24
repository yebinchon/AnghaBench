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
typedef  int /*<<< orphan*/  u_char ;
struct IsdnCardState {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct IsdnCardState *cs, u_char *buf, int count, char *s) {
	char tmp[128];
	char *t = tmp;
	int i=count,j;
	u_char *p = buf;

	t += FUNC2(t, "tiger %s(%4d)", s, count);
	while (i>0) {
		if (i>16)
			j=16;
		else
			j=i;
		FUNC0(t, p, j);
		FUNC1(cs, tmp);
		p += j;
		i -= j;
		t = tmp;
		t += FUNC2(t, "tiger %s      ", s);
	}
}