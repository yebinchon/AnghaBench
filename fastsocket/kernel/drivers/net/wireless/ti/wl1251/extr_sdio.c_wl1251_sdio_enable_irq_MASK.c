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
struct wl1251 {int dummy; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  wl1251_sdio_interrupt ; 
 struct sdio_func* FUNC3 (struct wl1251*) ; 

__attribute__((used)) static void FUNC4(struct wl1251 *wl)
{
	struct sdio_func *func = FUNC3(wl);

	FUNC0(func);
	FUNC1(func, wl1251_sdio_interrupt);
	FUNC2(func);
}