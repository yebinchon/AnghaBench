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
typedef  int u16 ;
struct spi_device {int dummy; } ;
struct ser_req {int command; int /*<<< orphan*/  msg; TYPE_1__* xfer; } ;
struct TYPE_2__ {int* tx_buf; int len; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_12BIT ; 
 int /*<<< orphan*/  FUNC1 (struct ser_req*) ; 
 struct ser_req* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi, u16 reg, u16 val)
{
	struct ser_req *req;
	int status;

	req = FUNC2(sizeof *req, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	FUNC4(&req->msg);

	req->command = (u16) (FUNC0(reg) | (val & MAX_12BIT));
	req->xfer[0].tx_buf = &req->command;
	req->xfer[0].len = 2;

	FUNC3(&req->xfer[0], &req->msg);

	status = FUNC5(spi, &req->msg);

	FUNC1(req);

	return status;
}