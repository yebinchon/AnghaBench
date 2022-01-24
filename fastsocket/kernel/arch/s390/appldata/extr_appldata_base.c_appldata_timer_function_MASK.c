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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  appldata_expire_count ; 
 int /*<<< orphan*/  appldata_wq ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct work_struct*) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	if (FUNC0(&appldata_expire_count)) {
		FUNC1(&appldata_expire_count, FUNC2());
		FUNC3(appldata_wq, (struct work_struct *) data);
	}
}