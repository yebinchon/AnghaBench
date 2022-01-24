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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct zoran_fh {struct zoran* zr; } ;
struct zoran {int /*<<< orphan*/  resource_lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct zoran*) ; 
 int FUNC3 (struct zoran*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *__fh, v4l2_std_id *std)
{
	struct zoran_fh *fh = __fh;
	struct zoran *zr = fh->zr;
	int res = 0;

	FUNC0(&zr->resource_lock);
	res = FUNC3(zr, *std);
	if (res)
		goto sstd_unlock_and_return;

	res = FUNC2(zr);
sstd_unlock_and_return:
	FUNC1(&zr->resource_lock);
	return res;
}