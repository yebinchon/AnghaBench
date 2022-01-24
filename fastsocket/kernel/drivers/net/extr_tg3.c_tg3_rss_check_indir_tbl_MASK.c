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
struct tg3 {int rxq_cnt; int* rss_ind_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUPPORT_MSIX ; 
 int TG3_RSS_INDIR_TBL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int) ; 

__attribute__((used)) static void FUNC3(struct tg3 *tp)
{
	int i;

	if (!FUNC1(tp, SUPPORT_MSIX))
		return;

	if (tp->rxq_cnt == 1) {
		FUNC0(&tp->rss_ind_tbl[0], 0, sizeof(tp->rss_ind_tbl));
		return;
	}

	/* Validate table against current IRQ count */
	for (i = 0; i < TG3_RSS_INDIR_TBL_SIZE; i++) {
		if (tp->rss_ind_tbl[i] >= tp->rxq_cnt)
			break;
	}

	if (i != TG3_RSS_INDIR_TBL_SIZE)
		FUNC2(tp, tp->rxq_cnt);
}