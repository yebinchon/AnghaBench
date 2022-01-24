#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tty; } ;
struct TYPE_6__ {int mode; } ;
struct slgt_info {unsigned int rbuf_current; int /*<<< orphan*/  flag_buf; TYPE_3__* rbufs; TYPE_2__ port; TYPE_1__ params; } ;
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slgt_info*,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  MGSL_MODE_BISYNC 129 
#define  MGSL_MODE_MONOSYNC 128 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 unsigned int FUNC3 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static bool FUNC7(struct slgt_info *info)
{
	unsigned int i = info->rbuf_current;
	unsigned int count;

	if (!FUNC2(info->rbufs[i]))
		return false;
	count = FUNC3(info->rbufs[i]);
	switch(info->params.mode) {
	case MGSL_MODE_MONOSYNC:
	case MGSL_MODE_BISYNC:
		/* ignore residue in byte synchronous modes */
		if (FUNC4(info->rbufs[i]))
			count--;
		break;
	}
	FUNC0(info, info->rbufs[i].buf, count, "rx");
	FUNC1(("rx_get_buf size=%d\n", count));
	if (count)
		FUNC6(info->port.tty, info->rbufs[i].buf,
				  info->flag_buf, count);
	FUNC5(info, i, i);
	return true;
}