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
struct sdio_func {int dummy; } ;
struct b43_sdio {int /*<<< orphan*/  ssb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_sdio*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 struct b43_sdio* FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sdio_func *func)
{
	struct b43_sdio *sdio = FUNC3(func);

	FUNC6(&sdio->ssb);
	FUNC1(func);
	FUNC2(func);
	FUNC4(func);
	FUNC0(sdio);
	FUNC5(func, NULL);
}