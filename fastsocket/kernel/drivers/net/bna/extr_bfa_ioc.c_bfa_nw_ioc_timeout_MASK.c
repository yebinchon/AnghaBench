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
struct bfa_ioc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOC_E_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 

void
FUNC1(void *ioc_arg)
{
	struct bfa_ioc *ioc = (struct bfa_ioc *) ioc_arg;

	FUNC0(ioc, IOC_E_TIMEOUT);
}