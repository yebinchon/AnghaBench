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
typedef  int u32 ;
struct request {int /*<<< orphan*/  buffer; } ;
struct mg_host {void (* mg_do_intr ) (struct mg_host*) ;int /*<<< orphan*/  breq; scalar_t__ dev_base; int /*<<< orphan*/  timer; struct request* req; } ;

/* Variables and functions */
 int ATA_BUSY ; 
 int ATA_DRQ ; 
 int HZ ; 
 int /*<<< orphan*/  MG_CMD_WR_CONF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MG_REG_COMMAND ; 
 scalar_t__ MG_REG_STATUS ; 
 int /*<<< orphan*/  MG_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (struct request*) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct mg_host*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,struct mg_host*) ; 
 int FUNC7 (struct mg_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mg_host*,struct request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct mg_host *host)
{
	struct request *req = host->req;
	u32 i;
	bool rem;

	/* check status */
	do {
		i = FUNC4((unsigned long)host->dev_base + MG_REG_STATUS);
		if (i & ATA_BUSY)
			break;
		if (!FUNC1(i))
			break;
		if ((FUNC3(req) <= 1) || (i & ATA_DRQ))
			goto ok_to_write;
	} while (0);
	FUNC6("mg_write_intr", i, host);
	FUNC5(host);
	FUNC8(host->breq);
	return;

ok_to_write:
	if ((rem = FUNC7(host, 0, MG_SECTOR_SIZE))) {
		/* write 1 sector and set handler if remains */
		FUNC9(host, req);
		FUNC0("sector %ld, remaining=%ld, buffer=0x%p\n",
		       FUNC2(req), FUNC3(req), req->buffer);
		host->mg_do_intr = mg_write_intr;
		FUNC10(&host->timer, jiffies + 3 * HZ);
	}

	/* send write confirm */
	FUNC11(MG_CMD_WR_CONF, (unsigned long)host->dev_base + MG_REG_COMMAND);

	if (!rem)
		FUNC8(host->breq);
}