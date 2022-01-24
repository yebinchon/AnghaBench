#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; unsigned long size; int writesize; int /*<<< orphan*/  priv; int /*<<< orphan*/  erasesize; int /*<<< orphan*/  type; int /*<<< orphan*/  owner; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  unpoint; int /*<<< orphan*/  point; int /*<<< orphan*/  erase; int /*<<< orphan*/  flags; } ;
struct phram_mtd_list {TYPE_1__ mtd; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_CAP_RAM ; 
 int /*<<< orphan*/  MTD_RAM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phram_mtd_list*) ; 
 struct phram_mtd_list* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phram_erase ; 
 int /*<<< orphan*/  phram_list ; 
 int /*<<< orphan*/  phram_point ; 
 int /*<<< orphan*/  phram_read ; 
 int /*<<< orphan*/  phram_unpoint ; 
 int /*<<< orphan*/  phram_write ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(char *name, unsigned long start, unsigned long len)
{
	struct phram_mtd_list *new;
	int ret = -ENOMEM;

	new = FUNC4(sizeof(*new), GFP_KERNEL);
	if (!new)
		goto out0;

	ret = -EIO;
	new->mtd.priv = FUNC1(start, len);
	if (!new->mtd.priv) {
		FUNC6("ioremap failed\n");
		goto out1;
	}


	new->mtd.name = name;
	new->mtd.size = len;
	new->mtd.flags = MTD_CAP_RAM;
        new->mtd.erase = phram_erase;
	new->mtd.point = phram_point;
	new->mtd.unpoint = phram_unpoint;
	new->mtd.read = phram_read;
	new->mtd.write = phram_write;
	new->mtd.owner = THIS_MODULE;
	new->mtd.type = MTD_RAM;
	new->mtd.erasesize = PAGE_SIZE;
	new->mtd.writesize = 1;

	ret = -EAGAIN;
	if (FUNC0(&new->mtd)) {
		FUNC6("Failed to register new device\n");
		goto out2;
	}

	FUNC5(&new->list, &phram_list);
	return 0;

out2:
	FUNC2(new->mtd.priv);
out1:
	FUNC3(new);
out0:
	return ret;
}