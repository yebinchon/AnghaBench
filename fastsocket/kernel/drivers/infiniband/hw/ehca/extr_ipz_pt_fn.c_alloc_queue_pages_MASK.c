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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ipz_queue {struct ipz_page** queue_pages; } ;
struct ipz_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCA_PAGESIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGES_PER_KPAGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ipz_queue *queue, const u32 nr_of_pages)
{
	int k, f = 0;
	u8 *kpage;

	while (f < nr_of_pages) {
		kpage = (u8 *)FUNC1(GFP_KERNEL);
		if (!kpage)
			goto out;

		for (k = 0; k < PAGES_PER_KPAGE && f < nr_of_pages; k++) {
			queue->queue_pages[f] = (struct ipz_page *)kpage;
			kpage += EHCA_PAGESIZE;
			f++;
		}
	}
	return 1;

out:
	for (f = 0; f < nr_of_pages && queue->queue_pages[f];
	     f += PAGES_PER_KPAGE)
		FUNC0((unsigned long)(queue->queue_pages)[f]);
	return 0;
}