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
struct loop_device {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_private; int /*<<< orphan*/  bi_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int FUNC2 (struct loop_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct loop_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct loop_device *lo, struct bio *bio)
{
	if (FUNC4(!bio->bi_bdev)) {
		FUNC3(lo, bio->bi_private);
		FUNC1(bio);
	} else {
		int ret = FUNC2(lo, bio);
		FUNC0(bio, ret);
	}
}