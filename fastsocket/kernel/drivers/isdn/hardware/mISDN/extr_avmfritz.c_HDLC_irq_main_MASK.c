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
typedef  int u32 ;
struct fritzcard {int /*<<< orphan*/  name; } ;
struct bchannel {int dummy; } ;

/* Variables and functions */
 int HDLC_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct bchannel*,int) ; 
 struct bchannel* FUNC1 (struct fritzcard*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fritzcard*,int) ; 

__attribute__((used)) static inline void
FUNC4(struct fritzcard *fc)
{
	u32 stat;
	struct bchannel *bch;

	stat = FUNC3(fc, 1);
	if (stat & HDLC_INT_MASK) {
		bch = FUNC1(fc, 1);
		if (bch)
			FUNC0(bch, stat);
		else
			FUNC2("%s: spurious ch1 IRQ\n", fc->name);
	}
	stat = FUNC3(fc, 2);
	if (stat & HDLC_INT_MASK) {
		bch = FUNC1(fc, 2);
		if (bch)
			FUNC0(bch, stat);
		else
			FUNC2("%s: spurious ch2 IRQ\n", fc->name);
	}
}