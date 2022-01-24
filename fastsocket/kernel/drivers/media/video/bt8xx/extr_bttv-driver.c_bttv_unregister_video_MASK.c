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
struct bttv {int /*<<< orphan*/ * radio_dev; int /*<<< orphan*/ * vbi_dev; int /*<<< orphan*/ * video_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bttv *btv)
{
	if (btv->video_dev) {
		if (FUNC1(btv->video_dev))
			FUNC2(btv->video_dev);
		else
			FUNC0(btv->video_dev);
		btv->video_dev = NULL;
	}
	if (btv->vbi_dev) {
		if (FUNC1(btv->vbi_dev))
			FUNC2(btv->vbi_dev);
		else
			FUNC0(btv->vbi_dev);
		btv->vbi_dev = NULL;
	}
	if (btv->radio_dev) {
		if (FUNC1(btv->radio_dev))
			FUNC2(btv->radio_dev);
		else
			FUNC0(btv->radio_dev);
		btv->radio_dev = NULL;
	}
}