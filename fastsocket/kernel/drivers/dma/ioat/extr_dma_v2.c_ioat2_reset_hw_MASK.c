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
typedef  int /*<<< orphan*/  u32 ;
struct ioat_chan_common {scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ IOAT_CHANERR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct ioat_chan_common*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ioat_chan_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ioat_chan_common *chan)
{
	/* throw away whatever the channel was doing and get it initialized */
	u32 chanerr;

	FUNC0(chan, FUNC2(100));

	chanerr = FUNC3(chan->reg_base + IOAT_CHANERR_OFFSET);
	FUNC4(chanerr, chan->reg_base + IOAT_CHANERR_OFFSET);

	return FUNC1(chan, FUNC2(200));
}