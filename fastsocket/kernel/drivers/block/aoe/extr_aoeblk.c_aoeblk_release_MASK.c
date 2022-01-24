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
typedef  int /*<<< orphan*/  ulong ;
struct gendisk {struct aoedev* private_data; } ;
struct aoedev {scalar_t__ nopen; int /*<<< orphan*/  lock; int /*<<< orphan*/  aoeminor; int /*<<< orphan*/  aoemajor; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct gendisk *disk, fmode_t mode)
{
	struct aoedev *d = disk->private_data;
	ulong flags;

	FUNC1(&d->lock, flags);

	if (--d->nopen == 0) {
		FUNC2(&d->lock, flags);
		FUNC0(d->aoemajor, d->aoeminor);
		return 0;
	}
	FUNC2(&d->lock, flags);

	return 0;
}