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
struct scatterlist {int dummy; } ;
struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_request {struct mmc_request* stop; struct mmc_request* data; struct mmc_request* cmd; } ;
struct mmc_data {struct mmc_data* stop; struct mmc_data* data; struct mmc_data* cmd; } ;
struct mmc_command {struct mmc_command* stop; struct mmc_command* data; struct mmc_command* cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_request*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mmc_test_card*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_test_card*,struct mmc_request*,struct scatterlist*,unsigned int,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_test_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_request*) ; 

__attribute__((used)) static int FUNC5(struct mmc_test_card *test,
	struct scatterlist *sg, unsigned sg_len, unsigned dev_addr,
	unsigned blocks, unsigned blksz, int write)
{
	struct mmc_request mrq;
	struct mmc_command cmd;
	struct mmc_command stop;
	struct mmc_data data;

	FUNC0(&mrq, 0, sizeof(struct mmc_request));
	FUNC0(&cmd, 0, sizeof(struct mmc_command));
	FUNC0(&data, 0, sizeof(struct mmc_data));
	FUNC0(&stop, 0, sizeof(struct mmc_command));

	mrq.cmd = &cmd;
	mrq.data = &data;
	mrq.stop = &stop;

	FUNC2(test, &mrq, sg, sg_len, dev_addr,
		blocks, blksz, write);

	FUNC4(test->card->host, &mrq);

	FUNC3(test);

	return FUNC1(test, &mrq);
}