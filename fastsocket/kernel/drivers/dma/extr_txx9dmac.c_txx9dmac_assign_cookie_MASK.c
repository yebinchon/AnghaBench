#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cookie; } ;
struct txx9dmac_desc {TYPE_2__ txd; } ;
struct TYPE_3__ {scalar_t__ cookie; } ;
struct txx9dmac_chan {TYPE_1__ chan; } ;
typedef  scalar_t__ dma_cookie_t ;

/* Variables and functions */

__attribute__((used)) static dma_cookie_t
FUNC0(struct txx9dmac_chan *dc, struct txx9dmac_desc *desc)
{
	dma_cookie_t cookie = dc->chan.cookie;

	if (++cookie < 0)
		cookie = 1;

	dc->chan.cookie = cookie;
	desc->txd.cookie = cookie;

	return cookie;
}