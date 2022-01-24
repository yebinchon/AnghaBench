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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct v4l2_standard {int index; scalar_t__* name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_STD ; 
 struct v4l2_standard* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_standard*,struct v4l2_standard*,int) ; 
 unsigned int FUNC2 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_standard *std,v4l2_std_id id)
{
	struct v4l2_standard *template;
	int idx;
	unsigned int bcnt;
	template = FUNC0(id);
	if (!template) return 0;
	idx = std->index;
	FUNC1(std,template,sizeof(*template));
	std->index = idx;
	std->id = id;
	bcnt = FUNC2(std->name,sizeof(std->name)-1,id);
	std->name[bcnt] = 0;
	FUNC3(PVR2_TRACE_STD,"Set up standard idx=%u name=%s",
		   std->index,std->name);
	return !0;
}