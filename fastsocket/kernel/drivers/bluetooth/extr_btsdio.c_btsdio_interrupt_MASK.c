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
struct sdio_func {int dummy; } ;
struct btsdio_data {struct sdio_func* func; TYPE_1__* hdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  err_rx; } ;
struct TYPE_3__ {TYPE_2__ stat; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_CL_INTRD ; 
 int /*<<< orphan*/  REG_INTRD ; 
 int /*<<< orphan*/  REG_PC_RRT ; 
 scalar_t__ FUNC1 (struct btsdio_data*) ; 
 struct btsdio_data* FUNC2 (struct sdio_func*) ; 
 int FUNC3 (struct sdio_func*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sdio_func *func)
{
	struct btsdio_data *data = FUNC2(func);
	int intrd;

	FUNC0("%s", data->hdev->name);

	intrd = FUNC3(func, REG_INTRD, NULL);
	if (intrd & 0x01) {
		FUNC4(func, 0x01, REG_CL_INTRD, NULL);

		if (FUNC1(data) < 0) {
			data->hdev->stat.err_rx++;
			FUNC4(data->func, 0x01, REG_PC_RRT, NULL);
		}
	}
}