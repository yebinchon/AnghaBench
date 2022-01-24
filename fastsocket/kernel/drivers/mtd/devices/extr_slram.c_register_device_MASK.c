#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mtd_info {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ slram_priv_t ;
struct TYPE_8__ {TYPE_5__* mtdinfo; struct TYPE_8__* next; } ;
typedef  TYPE_2__ slram_mtd_list_t ;
struct TYPE_9__ {char* name; unsigned long size; int writesize; struct TYPE_9__* priv; int /*<<< orphan*/  erasesize; int /*<<< orphan*/  type; int /*<<< orphan*/  owner; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  unpoint; int /*<<< orphan*/  point; int /*<<< orphan*/  erase; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_CAP_RAM ; 
 int /*<<< orphan*/  MTD_RAM ; 
 int /*<<< orphan*/  SLRAM_BLK_SZ ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slram_erase ; 
 TYPE_2__* slram_mtdlist ; 
 int /*<<< orphan*/  slram_point ; 
 int /*<<< orphan*/  slram_read ; 
 int /*<<< orphan*/  slram_unpoint ; 
 int /*<<< orphan*/  slram_write ; 

__attribute__((used)) static int FUNC8(char *name, unsigned long start, unsigned long length)
{
	slram_mtd_list_t **curmtd;

	curmtd = &slram_mtdlist;
	while (*curmtd) {
		curmtd = &(*curmtd)->next;
	}

	*curmtd = FUNC6(sizeof(slram_mtd_list_t), GFP_KERNEL);
	if (!(*curmtd)) {
		FUNC0("slram: Cannot allocate new MTD device.\n");
		return(-ENOMEM);
	}
	(*curmtd)->mtdinfo = FUNC7(sizeof(struct mtd_info), GFP_KERNEL);
	(*curmtd)->next = NULL;

	if ((*curmtd)->mtdinfo)	{
		(*curmtd)->mtdinfo->priv =
			FUNC7(sizeof(slram_priv_t), GFP_KERNEL);

		if (!(*curmtd)->mtdinfo->priv) {
			FUNC5((*curmtd)->mtdinfo);
			(*curmtd)->mtdinfo = NULL;
		}
	}

	if (!(*curmtd)->mtdinfo) {
		FUNC0("slram: Cannot allocate new MTD device.\n");
		return(-ENOMEM);
	}

	if (!(((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start =
				FUNC3(start, length))) {
		FUNC0("slram: ioremap failed\n");
		return -EIO;
	}
	((slram_priv_t *)(*curmtd)->mtdinfo->priv)->end =
		((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start + length;


	(*curmtd)->mtdinfo->name = name;
	(*curmtd)->mtdinfo->size = length;
	(*curmtd)->mtdinfo->flags = MTD_CAP_RAM;
        (*curmtd)->mtdinfo->erase = slram_erase;
	(*curmtd)->mtdinfo->point = slram_point;
	(*curmtd)->mtdinfo->unpoint = slram_unpoint;
	(*curmtd)->mtdinfo->read = slram_read;
	(*curmtd)->mtdinfo->write = slram_write;
	(*curmtd)->mtdinfo->owner = THIS_MODULE;
	(*curmtd)->mtdinfo->type = MTD_RAM;
	(*curmtd)->mtdinfo->erasesize = SLRAM_BLK_SZ;
	(*curmtd)->mtdinfo->writesize = 1;

	if (FUNC2((*curmtd)->mtdinfo))	{
		FUNC0("slram: Failed to register new device\n");
		FUNC4(((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start);
		FUNC5((*curmtd)->mtdinfo->priv);
		FUNC5((*curmtd)->mtdinfo);
		return(-EAGAIN);
	}
	FUNC1("slram: Registered device %s from %luKiB to %luKiB\n", name,
			(start / 1024), ((start + length) / 1024));
	FUNC1("slram: Mapped from 0x%p to 0x%p\n",
			((slram_priv_t *)(*curmtd)->mtdinfo->priv)->start,
			((slram_priv_t *)(*curmtd)->mtdinfo->priv)->end);
	return(0);
}