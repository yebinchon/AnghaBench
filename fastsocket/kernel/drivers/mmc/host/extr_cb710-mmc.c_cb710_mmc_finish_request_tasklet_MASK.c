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
struct mmc_request {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_mmc_reader {struct mmc_request* mrq; } ;

/* Variables and functions */
 struct cb710_mmc_reader* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct mmc_host *mmc = (void *)data;
	struct cb710_mmc_reader *reader = FUNC0(mmc);
	struct mmc_request *mrq = reader->mrq;

	reader->mrq = NULL;
	FUNC1(mmc, mrq);
}