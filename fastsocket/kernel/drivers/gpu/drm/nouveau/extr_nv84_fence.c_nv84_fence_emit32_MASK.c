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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nouveau_channel {int vram; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NV11_SUBCHAN_DMA_SEMAPHORE ; 
 int /*<<< orphan*/  NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH ; 
 int NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (struct nouveau_channel*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_channel *chan, u64 virtual, u32 sequence)
{
	int ret = FUNC3(chan, 8);
	if (ret == 0) {
		FUNC0(chan, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 1);
		FUNC2  (chan, chan->vram);
		FUNC0(chan, 0, NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, 5);
		FUNC2  (chan, FUNC5(virtual));
		FUNC2  (chan, FUNC4(virtual));
		FUNC2  (chan, sequence);
		FUNC2  (chan, NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG);
		FUNC2  (chan, 0x00000000);
		FUNC1 (chan);
	}
	return ret;
}