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
typedef  int u8 ;
struct bcm3510_state {int /*<<< orphan*/  hab_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct bcm3510_state*,int*,int) ; 
 int FUNC1 (struct bcm3510_state*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct bcm3510_state *st, u8 cmd, u8 msgid, u8 *obuf, u8 olen, u8 *ibuf, u8 ilen)
{
	u8 ob[olen+2],ib[ilen+2];
	int ret = 0;

	ob[0] = cmd;
	ob[1] = msgid;
	FUNC4(&ob[2],obuf,olen);

	FUNC3("hab snd: ");
	FUNC2(ob,olen+2,deb_hab);
	FUNC3("\n");

	if (FUNC5(&st->hab_mutex) < 0)
		return -EAGAIN;

	if ((ret = FUNC1(st, ob, olen+2)) < 0 ||
		(ret = FUNC0(st, ib, ilen+2)) < 0)
		goto error;

	FUNC3("hab get: ");
	FUNC2(ib,ilen+2,deb_hab);
	FUNC3("\n");

	FUNC4(ibuf,&ib[2],ilen);
error:
	FUNC6(&st->hab_mutex);
	return ret;
}