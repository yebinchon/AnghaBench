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
struct txx9dmac_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  CCR; } ;
struct TYPE_3__ {int /*<<< orphan*/  CCR; } ;
struct txx9dmac_desc {TYPE_2__ hwdesc32; TYPE_1__ hwdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXX9_DMA_CCR_INTENT ; 
 scalar_t__ FUNC0 (struct txx9dmac_dev*) ; 

__attribute__((used)) static inline void FUNC1(struct txx9dmac_dev *ddev,
					    struct txx9dmac_desc *desc)
{
	if (FUNC0(ddev))
		desc->hwdesc.CCR |= TXX9_DMA_CCR_INTENT;
	else
		desc->hwdesc32.CCR |= TXX9_DMA_CCR_INTENT;
}