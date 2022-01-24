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
struct multipath_bh {TYPE_1__* mddev; struct bio* master_bio; } ;
struct mpconf {int /*<<< orphan*/  pool; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct mpconf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct multipath_bh*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (struct multipath_bh *mp_bh, int err)
{
	struct bio *bio = mp_bh->master_bio;
	struct mpconf *conf = mp_bh->mddev->private;

	FUNC0(bio, err);
	FUNC1(mp_bh, conf->pool);
}