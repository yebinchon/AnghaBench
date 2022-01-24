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
struct module {int dummy; } ;
struct dma_chan {scalar_t__ client_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module*) ; 
 struct module* FUNC1 (struct dma_chan*) ; 
 scalar_t__ dmaengine_ref_count ; 

__attribute__((used)) static void FUNC2(struct dma_chan *chan)
{
	struct module *owner = FUNC1(chan);

	while (chan->client_count < dmaengine_ref_count) {
		FUNC0(owner);
		chan->client_count++;
	}
}