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
struct slgt_info {int rbuf_count; int tbuf_count; int /*<<< orphan*/  device_name; int /*<<< orphan*/  tbufs; int /*<<< orphan*/  rbufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct slgt_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct slgt_info*) ; 
 scalar_t__ FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 

__attribute__((used)) static int FUNC5(struct slgt_info *info)
{
	info->rbuf_count = 32;
	info->tbuf_count = 32;

	if (FUNC2(info) < 0 ||
	    FUNC1(info, info->rbufs, info->rbuf_count) < 0 ||
	    FUNC1(info, info->tbufs, info->tbuf_count) < 0 ||
	    FUNC3(info) < 0) {
		FUNC0(("%s DMA buffer alloc fail\n", info->device_name));
		return -ENOMEM;
	}
	FUNC4(info);
	return 0;
}