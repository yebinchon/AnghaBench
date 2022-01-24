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
struct buf {scalar_t__ nframesout; TYPE_1__* bio; scalar_t__ resid; } ;
struct aoedev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct aoedev*,struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct aoedev *d, struct buf *buf)
{
	if (buf == NULL)
		return;
	buf->resid = 0;
	FUNC1(BIO_UPTODATE, &buf->bio->bi_flags);
	if (buf->nframesout == 0)
		FUNC0(d, buf);
}