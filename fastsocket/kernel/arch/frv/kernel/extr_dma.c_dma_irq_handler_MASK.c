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
struct frv_dma_channel {int /*<<< orphan*/  data; int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  (* handler ) (struct frv_dma_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frv_dma_channel*) ; 
 int frv_dma_channels ; 
 int /*<<< orphan*/  FUNC2 (struct frv_dma_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_channel)
{
	struct frv_dma_channel *channel = _channel;

	FUNC1(channel - frv_dma_channels);
	return channel->handler(channel - frv_dma_channels,
				FUNC0(channel->ioaddr, CSTR),
				channel->data);

}