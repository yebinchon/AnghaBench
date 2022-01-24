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
struct sh_dmae_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHCR ; 
 int FUNC0 (struct sh_dmae_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_dmae_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sh_dmae_chan *sh_chan, u32 val)
{
	int ret = FUNC0(sh_chan);
	/* When DMA was working, can not set data to CHCR */
	if (ret)
		return ret;

	FUNC1(sh_chan, val, CHCR);
	return 0;
}