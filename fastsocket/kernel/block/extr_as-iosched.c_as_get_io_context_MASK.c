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
struct io_context {scalar_t__ aic; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 () ; 
 struct io_context* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct io_context*) ; 

__attribute__((used)) static struct io_context *FUNC3(int node)
{
	struct io_context *ioc = FUNC1(GFP_ATOMIC, node);
	if (ioc && !ioc->aic) {
		ioc->aic = FUNC0();
		if (!ioc->aic) {
			FUNC2(ioc);
			ioc = NULL;
		}
	}
	return ioc;
}