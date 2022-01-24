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
struct request {int /*<<< orphan*/  buffer; TYPE_1__* rq_disk; } ;
struct mg_host {scalar_t__ dev_base; } ;
struct TYPE_2__ {struct mg_host* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DRQ ; 
 int /*<<< orphan*/  MG_CMD_RD ; 
 int /*<<< orphan*/  MG_CMD_RD_CONF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MG_ERR_NONE ; 
 scalar_t__ MG_REG_COMMAND ; 
 int /*<<< orphan*/  MG_SECTOR_SIZE ; 
 int /*<<< orphan*/  MG_TMAX_WAIT_RD_DRQ ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_host*) ; 
 scalar_t__ FUNC4 (struct mg_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mg_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_host*,struct request*) ; 
 scalar_t__ FUNC7 (struct mg_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct request *req)
{
	struct mg_host *host = req->rq_disk->private_data;

	if (FUNC5(host, FUNC1(req), FUNC2(req),
		   MG_CMD_RD, NULL) != MG_ERR_NONE)
		FUNC3(host);

	FUNC0("requested %d sects (from %ld), buffer=0x%p\n",
	       FUNC2(req), FUNC1(req), req->buffer);

	do {
		if (FUNC7(host, ATA_DRQ,
			    MG_TMAX_WAIT_RD_DRQ) != MG_ERR_NONE) {
			FUNC3(host);
			return;
		}

		FUNC6(host, req);

		FUNC8(MG_CMD_RD_CONF, (unsigned long)host->dev_base +
				MG_REG_COMMAND);
	} while (FUNC4(host, 0, MG_SECTOR_SIZE));
}