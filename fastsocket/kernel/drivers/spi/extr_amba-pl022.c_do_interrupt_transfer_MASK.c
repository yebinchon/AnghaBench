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
struct pl022 {int /*<<< orphan*/  virtbase; TYPE_2__* cur_msg; int /*<<< orphan*/  cur_transfer; TYPE_1__* cur_chip; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* cs_control ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int ENABLE_ALL_INTERRUPTS ; 
 int /*<<< orphan*/  SSP_CHIP_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SSP_CR1_MASK_SSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct pl022*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pl022*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *data)
{
	struct pl022 *pl022 = data;

	/* Enable target chip */
	pl022->cur_chip->cs_control(SSP_CHIP_SELECT);
	if (FUNC4(pl022, pl022->cur_transfer)) {
		/* Error path */
		pl022->cur_msg->state = STATE_ERROR;
		pl022->cur_msg->status = -EIO;
		FUNC2(pl022);
		return;
	}
	/* Enable SSP, turn on interrupts */
	FUNC6((FUNC3(FUNC0(pl022->virtbase)) | SSP_CR1_MASK_SSE),
	       FUNC0(pl022->virtbase));
	FUNC6(ENABLE_ALL_INTERRUPTS, FUNC1(pl022->virtbase));
}