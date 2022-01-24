#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spu_context {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 struct spu_context* FUNC0 (int*) ; 
 int FUNC1 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_context*) ; 
 int FUNC3 (struct spu_context*,int,struct file*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* spufs_coredump_read ; 

int FUNC4(struct file *file, loff_t *foffset)
{
	struct spu_context *ctx;
	int fd, j, rc;

	fd = 0;
	while ((ctx = FUNC0(&fd)) != NULL) {
		rc = FUNC1(ctx);
		if (rc)
			return rc;

		for (j = 0; spufs_coredump_read[j].name != NULL; j++) {
			rc = FUNC3(ctx, j, file, fd, foffset);
			if (rc) {
				FUNC2(ctx);
				return rc;
			}
		}

		FUNC2(ctx);

		/* start searching the next fd next time */
		fd++;
	}

	return 0;
}