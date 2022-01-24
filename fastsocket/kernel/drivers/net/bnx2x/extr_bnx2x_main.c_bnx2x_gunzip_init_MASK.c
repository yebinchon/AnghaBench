#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bnx2x {int /*<<< orphan*/ * gunzip_buf; int /*<<< orphan*/  gunzip_mapping; TYPE_1__* pdev; TYPE_2__* strm; } ;
struct TYPE_5__ {int /*<<< orphan*/ * workspace; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_BUF_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct bnx2x *bp)
{
	bp->gunzip_buf = FUNC1(&bp->pdev->dev, FW_BUF_SIZE,
					    &bp->gunzip_mapping, GFP_KERNEL);
	if (bp->gunzip_buf  == NULL)
		goto gunzip_nomem1;

	bp->strm = FUNC4(sizeof(*bp->strm), GFP_KERNEL);
	if (bp->strm  == NULL)
		goto gunzip_nomem2;

	bp->strm->workspace = FUNC5(FUNC6());
	if (bp->strm->workspace == NULL)
		goto gunzip_nomem3;

	return 0;

gunzip_nomem3:
	FUNC3(bp->strm);
	bp->strm = NULL;

gunzip_nomem2:
	FUNC2(&bp->pdev->dev, FW_BUF_SIZE, bp->gunzip_buf,
			  bp->gunzip_mapping);
	bp->gunzip_buf = NULL;

gunzip_nomem1:
	FUNC0("Cannot allocate firmware buffer for un-compression\n");
	return -ENOMEM;
}