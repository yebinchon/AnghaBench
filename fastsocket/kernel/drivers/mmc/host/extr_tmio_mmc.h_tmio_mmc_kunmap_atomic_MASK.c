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
struct tmio_mmc_host {int /*<<< orphan*/  sg_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_BIO_SRC_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct tmio_mmc_host *host,
	unsigned long *flags)
{
	FUNC0(FUNC2(host->sg_ptr), KM_BIO_SRC_IRQ);
	FUNC1(*flags);
}