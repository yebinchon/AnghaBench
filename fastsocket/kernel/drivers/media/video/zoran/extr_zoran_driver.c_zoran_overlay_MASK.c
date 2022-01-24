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
struct zoran_fh {struct zoran* zr; } ;
struct zoran {int /*<<< orphan*/  resource_lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct zoran_fh*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *__fh, unsigned int on)
{
	struct zoran_fh *fh = __fh;
	struct zoran *zr = fh->zr;
	int res;

	FUNC0(&zr->resource_lock);
	res = FUNC2(fh, on);
	FUNC1(&zr->resource_lock);

	return res;
}