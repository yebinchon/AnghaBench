#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mite_struct {TYPE_2__* pcidev; scalar_t__ used; struct mite_struct* next; } ;
struct comedi_device {TYPE_3__* board_ptr; } ;
struct TYPE_8__ {struct mite_struct* mite; } ;
struct TYPE_7__ {scalar_t__ dev_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_5__ {int number; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* devpriv ; 
 scalar_t__ FUNC1 (struct mite_struct*) ; 
 struct mite_struct* mite_devices ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int n_ni6527_boards ; 
 TYPE_3__* ni6527_boards ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, int bus, int slot)
{
	struct mite_struct *mite;
	int i;

	for (mite = mite_devices; mite; mite = mite->next) {
		if (mite->used)
			continue;
		if (bus || slot) {
			if (bus != mite->pcidev->bus->number ||
			    slot != FUNC0(mite->pcidev->devfn))
				continue;
		}
		for (i = 0; i < n_ni6527_boards; i++) {
			if (FUNC1(mite) == ni6527_boards[i].dev_id) {
				dev->board_ptr = ni6527_boards + i;
				devpriv->mite = mite;
				return 0;
			}
		}
	}
	FUNC3("no device found\n");
	FUNC2();
	return -EIO;
}