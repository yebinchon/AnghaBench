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
struct dm_bufio_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_bufio_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  write_list ; 

void FUNC7(struct dm_bufio_client *c)
{
	FUNC1(write_list);

	FUNC0(FUNC4());

	FUNC5(c);
	FUNC3(c, 0, &write_list);
	FUNC6(c);
	FUNC2(&write_list, c);
}