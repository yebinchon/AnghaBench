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
struct cardstate {TYPE_1__* ops; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_cmd ) (struct cardstate*,char*,size_t,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cardstate*,char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct cardstate *cs, const char *cmd, int cid,
			 int dle, gfp_t kmallocflags)
{
	size_t cmdlen, buflen;
	char *cmdpos, *cmdbuf, *cmdtail;

	cmdlen = FUNC4(cmd);
	buflen = 11 + cmdlen;
	if (FUNC6(buflen <= cmdlen)) {
		FUNC0(cs->dev, "integer overflow in buflen\n");
		return;
	}

	cmdbuf = FUNC2(buflen, kmallocflags);
	if (FUNC6(!cmdbuf)) {
		FUNC0(cs->dev, "out of memory\n");
		return;
	}

	cmdpos = cmdbuf + 9;
	cmdtail = cmdpos + cmdlen;
	FUNC3(cmdpos, cmd, cmdlen);

	if (cid > 0 && cid <= 65535) {
		do {
			*--cmdpos = '0' + cid % 10;
			cid /= 10;
			++cmdlen;
		} while (cid);
	}

	cmdlen += 2;
	*--cmdpos = 'T';
	*--cmdpos = 'A';

	if (dle) {
		cmdlen += 4;
		*--cmdpos = '(';
		*--cmdpos = 0x10;
		*cmdtail++ = 0x10;
		*cmdtail++ = ')';
	}

	cs->ops->write_cmd(cs, cmdpos, cmdlen, NULL);
	FUNC1(cmdbuf);
}