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
struct orc_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct orc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct orc_host*) ; 

__attribute__((used)) static void FUNC2(struct orc_host * host)
{
	if (FUNC0(host) != 1) {
		FUNC1(host);	/* setup default pattern        */
		FUNC0(host);	/* load again                   */
	}
}