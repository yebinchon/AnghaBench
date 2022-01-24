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
struct parisc_driver {int dummy; } ;
struct match_count {int count; struct parisc_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct match_count*) ; 
 int /*<<< orphan*/  match_and_count ; 

int FUNC1(struct parisc_driver *driver)
{
	struct match_count m = {
		.driver	= driver,
		.count	= 0,
	};

	FUNC0(match_and_count, &m);

	return m.count;
}