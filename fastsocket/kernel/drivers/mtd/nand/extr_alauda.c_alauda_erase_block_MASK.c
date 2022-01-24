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
typedef  int u8 ;
typedef  int u32 ;
struct mtd_info {struct alauda* priv; } ;
struct alauda_sg_request {int /*<<< orphan*/ ** urb; int /*<<< orphan*/  comp; } ;
struct alauda {int port; int /*<<< orphan*/  card_mutex; int /*<<< orphan*/  bulk_in; int /*<<< orphan*/  dev; int /*<<< orphan*/  bulk_out; TYPE_1__* card; } ;
typedef  int loff_t ;
struct TYPE_2__ {int blockshift; } ;

/* Variables and functions */
 int ALAUDA_BULK_CMD ; 
 int ALAUDA_BULK_ERASE_BLOCK ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  alauda_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mtd_info *mtd, loff_t ofs)
{
	struct alauda_sg_request sg;
	struct alauda *al = mtd->priv;
	u32 pba = ofs >> al->card->blockshift;
	u8 command[] = {
		ALAUDA_BULK_CMD, ALAUDA_BULK_ERASE_BLOCK, FUNC0(pba),
		FUNC2(pba), 0, FUNC1(pba), 0x02, 0, al->port
	};
	u8 buf[2];
	int i, err;

	for (i=0; i<2; i++)
		sg.urb[i] = NULL;

	err = -ENOMEM;
	for (i=0; i<2; i++) {
		sg.urb[i] = FUNC6(0, GFP_NOIO);
		if (!sg.urb[i])
			goto out;
	}
	FUNC3(&sg.comp);
	FUNC7(sg.urb[0], al->dev, al->bulk_out, command, 9,
			alauda_complete, NULL);
	FUNC7(sg.urb[1], al->dev, al->bulk_in, buf, 2,
			alauda_complete, &sg.comp);

	FUNC4(&al->card_mutex);
	for (i=0; i<2; i++) {
		err = FUNC10(sg.urb[i], GFP_NOIO);
		if (err)
			goto cancel;
	}
	if (!FUNC11(&sg.comp, TIMEOUT)) {
		err = -ETIMEDOUT;
cancel:
		for (i=0; i<2; i++) {
			FUNC9(sg.urb[i]);
		}
	}
	FUNC5(&al->card_mutex);

out:
	FUNC8(sg.urb[0]);
	FUNC8(sg.urb[1]);
	return err;
}