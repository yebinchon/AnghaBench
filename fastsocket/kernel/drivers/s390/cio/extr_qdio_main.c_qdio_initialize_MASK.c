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
struct qdio_initialize {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int FUNC0 (struct qdio_initialize*) ; 
 int FUNC1 (struct qdio_initialize*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct qdio_initialize *init_data)
{
	int rc;

	rc = FUNC0(init_data);
	if (rc)
		return rc;

	rc = FUNC1(init_data);
	if (rc)
		FUNC2(init_data->cdev);
	return rc;
}