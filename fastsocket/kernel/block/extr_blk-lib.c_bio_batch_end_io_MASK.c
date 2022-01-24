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
struct bio_batch {int /*<<< orphan*/  wait; int /*<<< orphan*/  done; int /*<<< orphan*/  flags; } ;
struct bio {struct bio_batch* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bio *bio, int err)
{
	struct bio_batch *bb = bio->bi_private;

	if (err && (err != -EOPNOTSUPP))
		FUNC2(BIO_UPTODATE, &bb->flags);
	if (FUNC0(&bb->done))
		FUNC3(bb->wait);
	FUNC1(bio);
}