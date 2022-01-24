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
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_tfd {int /*<<< orphan*/  num_tbs; } ;
struct iwl_cmd_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int) ; 
 int IWL_NUM_OF_TBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_tfd*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_tfd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_tfd*,int) ; 

__attribute__((used)) static void FUNC5(struct iwl_trans *trans,
			       struct iwl_cmd_meta *meta,
			       struct iwl_tfd *tfd)
{
	int i;
	int num_tbs;

	/* Sanity check on number of chunks */
	num_tbs = FUNC2(tfd);

	if (num_tbs >= IWL_NUM_OF_TBS) {
		FUNC0(trans, "Too many chunks: %i\n", num_tbs);
		/* @todo issue fatal error, it is quite serious situation */
		return;
	}

	/* first TB is never freed - it's the scratchbuf data */

	for (i = 1; i < num_tbs; i++)
		FUNC1(trans->dev, FUNC3(tfd, i),
				 FUNC4(tfd, i),
				 DMA_TO_DEVICE);

	tfd->num_tbs = 0;
}