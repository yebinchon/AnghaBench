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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ind; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 size_t TIQDIO_SHARED_IND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* q_indicators ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(void)
{
	if (!FUNC0(&q_indicators[TIQDIO_SHARED_IND].count))
		return 0;
	return FUNC1(&q_indicators[TIQDIO_SHARED_IND].ind, 0);
}