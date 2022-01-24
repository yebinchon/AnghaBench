#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct sixpack {TYPE_2__* dev; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIXPF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sixpack*,unsigned char*,int) ; 
 struct sixpack* FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct sixpack*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty,
	const unsigned char *cp, char *fp, int count)
{
	struct sixpack *sp;
	unsigned char buf[512];
	int count1;

	if (!count)
		return;

	sp = FUNC2(tty);
	if (!sp)
		return;

	FUNC0(buf, cp, count < sizeof(buf) ? count : sizeof(buf));

	/* Read the characters out of the buffer */

	count1 = count;
	while (count) {
		count--;
		if (fp && *fp++) {
			if (!FUNC4(SIXPF_ERROR, &sp->flags))
				sp->dev->stats.rx_errors++;
			continue;
		}
	}
	FUNC1(sp, buf, count1);

	FUNC3(sp);
	FUNC5(tty);
}