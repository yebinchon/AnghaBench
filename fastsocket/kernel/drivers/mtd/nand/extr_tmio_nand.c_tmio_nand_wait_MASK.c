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
struct tmio_nand {TYPE_2__* dev; scalar_t__ fcr; } ;
struct nand_chip {scalar_t__ state; int (* read_byte ) (struct mtd_info*) ;int /*<<< orphan*/  (* cmdfunc ) (struct mtd_info*,int /*<<< orphan*/ ,int,int) ;TYPE_1__* controller; } ;
struct mtd_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 scalar_t__ FCR_IMR ; 
 scalar_t__ FCR_ISR ; 
 scalar_t__ FL_ERASING ; 
 int /*<<< orphan*/  NAND_CMD_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct tmio_nand* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*) ; 
 scalar_t__ FUNC7 (int) ; 
 long FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct mtd_info *mtd, struct nand_chip *nand_chip)
{
	struct tmio_nand *tmio = FUNC2(mtd);
	long timeout;

	/* enable RDYREQ interrupt */
	FUNC5(0x0f, tmio->fcr + FCR_ISR);
	FUNC5(0x81, tmio->fcr + FCR_IMR);

	timeout = FUNC8(nand_chip->controller->wq,
		FUNC6(mtd),
		FUNC1(nand_chip->state == FL_ERASING ? 400 : 20));

	if (FUNC7(!FUNC6(mtd))) {
		FUNC5(0x00, tmio->fcr + FCR_IMR);
		FUNC0(&tmio->dev->dev, "still busy with %s after %d ms\n",
			nand_chip->state == FL_ERASING ? "erase" : "program",
			nand_chip->state == FL_ERASING ? 400 : 20);

	} else if (FUNC7(!timeout)) {
		FUNC5(0x00, tmio->fcr + FCR_IMR);
		FUNC0(&tmio->dev->dev, "timeout waiting for interrupt\n");
	}

	nand_chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
	return nand_chip->read_byte(mtd);
}