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
struct efx_nic {int /*<<< orphan*/  biu_lock; } ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct efx_nic *efx,
					   efx_dword_t *value,
					   unsigned int reg,
					   unsigned int page)
{
	unsigned long flags __attribute__ ((unused));

	if (page == 0) {
		FUNC2(&efx->biu_lock, flags);
		FUNC1(efx, value, FUNC0(page, reg));
		FUNC3(&efx->biu_lock, flags);
	} else {
		FUNC1(efx, value, FUNC0(page, reg));
	}
}