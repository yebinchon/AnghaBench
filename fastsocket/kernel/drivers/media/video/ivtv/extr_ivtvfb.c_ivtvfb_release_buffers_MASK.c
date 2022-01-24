#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {struct osd_info* pseudo_palette; TYPE_2__ cmap; } ;
struct osd_info {scalar_t__ fb_start_aligned_physaddr; scalar_t__ fb_end_aligned_physaddr; TYPE_1__ ivtvfb_info; } ;
struct ivtv {struct osd_info* osd_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_info*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3 (struct ivtv *itv)
{
	struct osd_info *oi = itv->osd_info;

	/* Release cmap */
	if (oi->ivtvfb_info.cmap.len)
		FUNC0(&oi->ivtvfb_info.cmap);

	/* Release pseudo palette */
	if (oi->ivtvfb_info.pseudo_palette)
		FUNC1(oi->ivtvfb_info.pseudo_palette);

#ifdef CONFIG_MTRR
	if (oi->fb_end_aligned_physaddr) {
		mtrr_del(-1, oi->fb_start_aligned_physaddr,
			oi->fb_end_aligned_physaddr - oi->fb_start_aligned_physaddr);
	}
#endif

	FUNC1(oi);
	itv->osd_info = NULL;
}