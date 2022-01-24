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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_request {int error; struct mmc_request* stop; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {int error; struct mmc_data* stop; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {int error; struct mmc_command* stop; struct mmc_command* data; struct mmc_command* cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_test_card*,struct mmc_request*,struct scatterlist*,int,unsigned int,int,unsigned int,int) ; 
 int FUNC2 (struct mmc_test_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct mmc_test_card *test,
	u8 *buffer, unsigned addr, unsigned blksz, int write)
{
	int ret;

	struct mmc_request mrq;
	struct mmc_command cmd;
	struct mmc_command stop;
	struct mmc_data data;

	struct scatterlist sg;

	FUNC0(&mrq, 0, sizeof(struct mmc_request));
	FUNC0(&cmd, 0, sizeof(struct mmc_command));
	FUNC0(&data, 0, sizeof(struct mmc_data));
	FUNC0(&stop, 0, sizeof(struct mmc_command));

	mrq.cmd = &cmd;
	mrq.data = &data;
	mrq.stop = &stop;

	FUNC4(&sg, buffer, blksz);

	FUNC1(test, &mrq, &sg, 1, addr, 1, blksz, write);

	FUNC3(test->card->host, &mrq);

	if (cmd.error)
		return cmd.error;
	if (data.error)
		return data.error;

	ret = FUNC2(test);
	if (ret)
		return ret;

	return 0;
}