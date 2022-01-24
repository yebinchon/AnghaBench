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
struct dw_dma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SAR ; 
 int /*<<< orphan*/  FUNC0 (struct dw_dma_chan*,int /*<<< orphan*/ ) ; 
 struct dw_dma_chan* FUNC1 (struct dma_chan*) ; 

inline dma_addr_t FUNC2(struct dma_chan *chan)
{
	struct dw_dma_chan *dwc = FUNC1(chan);
	return FUNC0(dwc, SAR);
}