#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  window_handle_t ;
struct pcmciamtd_dev {int win_size; unsigned long offset; int /*<<< orphan*/ * win_base; int /*<<< orphan*/  p_dev; } ;
struct map_info {int /*<<< orphan*/  map_priv_2; scalar_t__ map_priv_1; } ;
struct TYPE_3__ {unsigned long CardOffset; scalar_t__ Page; } ;
typedef  TYPE_1__ memreq_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  MapMemPage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static caddr_t FUNC4(struct map_info *map, unsigned long to)
{
	struct pcmciamtd_dev *dev = (struct pcmciamtd_dev *)map->map_priv_1;
	window_handle_t win = (window_handle_t)map->map_priv_2;
	memreq_t mrq;
	int ret;

	if (!FUNC2(dev->p_dev)) {
		FUNC0(1, "device removed");
		return 0;
	}

	mrq.CardOffset = to & ~(dev->win_size-1);
	if(mrq.CardOffset != dev->offset) {
		FUNC0(2, "Remapping window from 0x%8.8x to 0x%8.8x",
		      dev->offset, mrq.CardOffset);
		mrq.Page = 0;
		ret = FUNC3(win, &mrq);
		if (ret != 0) {
			FUNC1(dev->p_dev, MapMemPage, ret);
			return NULL;
		}
		dev->offset = mrq.CardOffset;
	}
	return dev->win_base + (to & (dev->win_size-1));
}