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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  NvDmaFB ; 
 int /*<<< orphan*/  NvNotify0 ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_channel*,int) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_channel *chan, u32 handle)
{
	int ret = FUNC2(chan, 6);
	if (ret == 0) {
		FUNC0(chan, NvSubCopy, 0x0000, 1);
		FUNC1  (chan, handle);
		FUNC0(chan, NvSubCopy, 0x0180, 3);
		FUNC1  (chan, NvNotify0);
		FUNC1  (chan, NvDmaFB);
		FUNC1  (chan, NvDmaFB);
	}

	return ret;
}