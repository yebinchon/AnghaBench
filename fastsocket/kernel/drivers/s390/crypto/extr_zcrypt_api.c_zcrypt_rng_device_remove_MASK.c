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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ zcrypt_rng_buffer ; 
 int /*<<< orphan*/  zcrypt_rng_dev ; 
 scalar_t__ zcrypt_rng_device_count ; 
 int /*<<< orphan*/  zcrypt_rng_mutex ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC2(&zcrypt_rng_mutex);
	zcrypt_rng_device_count--;
	if (zcrypt_rng_device_count == 0) {
		FUNC1(&zcrypt_rng_dev);
		FUNC0((unsigned long) zcrypt_rng_buffer);
	}
	FUNC3(&zcrypt_rng_mutex);
}