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
typedef  int /*<<< orphan*/  u32 ;
struct video_clip {int x; int y; int width; int height; } ;
struct TYPE_2__ {int width; int height; int x; int swidth; int y; int sheight; } ;
struct saa7146 {TYPE_1__ win; int /*<<< orphan*/ * dmavid2; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_CLIPMAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct saa7146 *saa, struct video_clip *cr, int ncr)
{
	int i, width, height;
	u32 *clipmap;

	clipmap = saa->dmavid2;
	if ((width = saa->win.width) > 1023)
		width = 1023;	/* sanity check */
	if ((height = saa->win.height) > 640)
		height = 639;	/* sanity check */
	if (ncr > 0) {		/* rectangles pased */
		/* convert rectangular clips to a bitmap */
		FUNC1(clipmap, 0, VIDEO_CLIPMAP_SIZE);	/* clear map */
		for (i = 0; i < ncr; i++)
			FUNC0(clipmap, cr[i].x, cr[i].y,
				cr[i].width, cr[i].height);
	}
	/* clip against viewing window AND screen
	   so we do not have to rely on the user program
	 */
	FUNC0(clipmap, (saa->win.x + width > saa->win.swidth) ?
		(saa->win.swidth - saa->win.x) : width, 0, 1024, 768);
	FUNC0(clipmap, 0,
		(saa->win.y + height > saa->win.sheight) ?
		(saa->win.sheight - saa->win.y) : height, 1024, 768);
	if (saa->win.x < 0)
		FUNC0(clipmap, 0, 0, -saa->win.x, 768);
	if (saa->win.y < 0)
		FUNC0(clipmap, 0, 0, 1024, -saa->win.y);
}