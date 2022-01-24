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
struct mtd_blktrans_dev {int /*<<< orphan*/  devnum; } ;
struct NFTLrecord {struct NFTLrecord* EUNtable; struct NFTLrecord* ReplUnitTable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL1 ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct NFTLrecord*) ; 

__attribute__((used)) static void FUNC3(struct mtd_blktrans_dev *dev)
{
	struct NFTLrecord *nftl = (void *)dev;

	FUNC0(MTD_DEBUG_LEVEL1, "NFTL: remove_dev (i=%d)\n", dev->devnum);

	FUNC1(dev);
	FUNC2(nftl->ReplUnitTable);
	FUNC2(nftl->EUNtable);
	FUNC2(nftl);
}