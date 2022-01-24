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
typedef  int v4l2_std_id ;
struct pvr2_hdw {int std_mask_avail; } ;
struct pvr2_ctrl {struct pvr2_hdw* hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*) ; 

__attribute__((used)) static int FUNC2(struct pvr2_ctrl *cptr,int m,int v)
{
	struct pvr2_hdw *hdw = cptr->hdw;
	v4l2_std_id ns;
	ns = hdw->std_mask_avail;
	ns = (ns & ~m) | (v & m);
	if (ns == hdw->std_mask_avail) return 0;
	hdw->std_mask_avail = ns;
	FUNC1(hdw);
	FUNC0(hdw);
	return 0;
}