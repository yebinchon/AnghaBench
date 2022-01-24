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
struct pvr2_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 struct pvr2_stream* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct pvr2_stream*) ; 

struct pvr2_stream *FUNC3(void)
{
	struct pvr2_stream *sp;
	sp = FUNC0(sizeof(*sp),GFP_KERNEL);
	if (!sp) return sp;
	FUNC2(PVR2_TRACE_INIT,"pvr2_stream_create: sp=%p",sp);
	FUNC1(sp);
	return sp;
}