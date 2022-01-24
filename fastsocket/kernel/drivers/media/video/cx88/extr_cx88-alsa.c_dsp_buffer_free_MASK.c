#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dma_size; int /*<<< orphan*/ * dma_risc; TYPE_2__* buf; TYPE_4__* pci; } ;
typedef  TYPE_1__ snd_cx88_card_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  risc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(snd_cx88_card_t *chip)
{
	FUNC0(!chip->dma_size);

	FUNC2(2,"Freeing buffer\n");
	FUNC5(&chip->pci->dev, chip->dma_risc);
	FUNC4(chip->dma_risc);
	FUNC1(chip->pci,&chip->buf->risc);
	FUNC3(chip->buf);

	chip->dma_risc = NULL;
	chip->dma_size = 0;

	return 0;
}