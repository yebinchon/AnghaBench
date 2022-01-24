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
struct ghes {int flags; } ;

/* Variables and functions */
 int GHES_EXITING ; 
 int /*<<< orphan*/  FUNC0 (struct ghes*) ; 
 int /*<<< orphan*/  FUNC1 (struct ghes*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct ghes *ghes = (void *)data;

	FUNC1(ghes);
	if (!(ghes->flags & GHES_EXITING))
		FUNC0(ghes);
}