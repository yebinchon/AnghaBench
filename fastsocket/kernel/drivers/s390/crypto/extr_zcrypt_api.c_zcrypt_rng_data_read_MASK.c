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
typedef  int /*<<< orphan*/  u32 ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/ * zcrypt_rng_buffer ; 
 size_t zcrypt_rng_buffer_index ; 

__attribute__((used)) static int FUNC2(struct hwrng *rng, u32 *data)
{
	int rc;

	/*
	 * We don't need locking here because the RNG API guarantees serialized
	 * read method calls.
	 */
	if (zcrypt_rng_buffer_index == 0) {
		rc = FUNC1((char *) zcrypt_rng_buffer);
		/* on failure: retry once again after a requested rescan */
		if ((rc == -ENODEV) && (FUNC0()))
			rc = FUNC1((char *) zcrypt_rng_buffer);
		if (rc < 0)
			return -EIO;
		zcrypt_rng_buffer_index = rc / sizeof *data;
	}
	*data = zcrypt_rng_buffer[--zcrypt_rng_buffer_index];
	return sizeof *data;
}