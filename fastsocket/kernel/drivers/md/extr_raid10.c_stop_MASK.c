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
struct r10conf {struct r10conf* mirrors; int /*<<< orphan*/  tmppage; scalar_t__ r10bio_pool; int /*<<< orphan*/  plug; } ;
struct mddev {struct r10conf* private; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct r10conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mddev *mddev)
{
	struct r10conf *conf = mddev->private;

	FUNC5(conf, 0);
	FUNC1(conf);

	FUNC2(&mddev->thread);
	FUNC4(&conf->plug);

	if (conf->r10bio_pool)
		FUNC3(conf->r10bio_pool);
	FUNC6(conf->tmppage);
	FUNC0(conf->mirrors);
	FUNC0(conf);
	mddev->private = NULL;
	return 0;
}