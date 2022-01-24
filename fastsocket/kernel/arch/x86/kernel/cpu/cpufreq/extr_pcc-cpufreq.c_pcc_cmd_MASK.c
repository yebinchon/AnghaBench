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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_COMPLETE ; 
 int POLL_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  doorbell ; 
 int doorbell_preserve ; 
 int doorbell_write ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* pcch_hdr ; 

__attribute__((used)) static inline void FUNC3(void)
{
	u64 doorbell_value;
	int i;

	FUNC0(&doorbell_value, &doorbell);
	FUNC1((doorbell_value & doorbell_preserve) | doorbell_write,
		   &doorbell);

	for (i = 0; i < POLL_LOOPS; i++) {
		if (FUNC2(&pcch_hdr->status) & CMD_COMPLETE)
			break;
	}
}