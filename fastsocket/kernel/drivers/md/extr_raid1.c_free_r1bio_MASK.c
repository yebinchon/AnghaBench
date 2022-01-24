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
struct r1conf {int /*<<< orphan*/  r1bio_pool; } ;
struct r1bio {TYPE_1__* mddev; } ;
struct TYPE_2__ {struct r1conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r1bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r1conf*,struct r1bio*) ; 

__attribute__((used)) static void FUNC2(struct r1bio *r1_bio)
{
	struct r1conf *conf = r1_bio->mddev->private;

	FUNC1(conf, r1_bio);
	FUNC0(r1_bio, conf->r1bio_pool);
}