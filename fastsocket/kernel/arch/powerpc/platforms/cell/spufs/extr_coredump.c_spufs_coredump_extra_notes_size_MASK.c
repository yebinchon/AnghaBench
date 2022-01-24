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
struct spu_context {int dummy; } ;

/* Variables and functions */
 struct spu_context* FUNC0 (int*) ; 
 int FUNC1 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_context*) ; 
 int FUNC3 (struct spu_context*,int) ; 

int FUNC4(void)
{
	struct spu_context *ctx;
	int size = 0, rc, fd;

	fd = 0;
	while ((ctx = FUNC0(&fd)) != NULL) {
		rc = FUNC1(ctx);
		if (rc)
			break;
		rc = FUNC3(ctx, fd);
		FUNC2(ctx);
		if (rc < 0)
			break;

		size += rc;

		/* start searching the next fd next time */
		fd++;
	}

	return size;
}