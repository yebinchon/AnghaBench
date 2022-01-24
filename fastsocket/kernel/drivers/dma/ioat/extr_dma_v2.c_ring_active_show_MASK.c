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
struct ioat2_dma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (struct ioat2_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct ioat2_dma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static ssize_t FUNC3(struct dma_chan *c, char *page)
{
	struct ioat2_dma_chan *ioat = FUNC2(c);

	/* ...taken outside the lock, no need to be precise */
	return FUNC1(page, "%d\n", FUNC0(ioat));
}