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
struct packet_data {int frames; struct bio* w_bio; scalar_t__* pages; struct bio** r_bios; int /*<<< orphan*/  lock; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FRAMES_PER_PAGE ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_data*) ; 
 struct packet_data* FUNC4 (int,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct packet_data *FUNC7(int frames)
{
	int i;
	struct packet_data *pkt;

	pkt = FUNC4(sizeof(struct packet_data), GFP_KERNEL);
	if (!pkt)
		goto no_pkt;

	pkt->frames = frames;
	pkt->w_bio = FUNC5(frames);
	if (!pkt->w_bio)
		goto no_bio;

	for (i = 0; i < frames / FRAMES_PER_PAGE; i++) {
		pkt->pages[i] = FUNC1(GFP_KERNEL|__GFP_ZERO);
		if (!pkt->pages[i])
			goto no_page;
	}

	FUNC6(&pkt->lock);

	for (i = 0; i < frames; i++) {
		struct bio *bio = FUNC5(1);
		if (!bio)
			goto no_rd_bio;
		pkt->r_bios[i] = bio;
	}

	return pkt;

no_rd_bio:
	for (i = 0; i < frames; i++) {
		struct bio *bio = pkt->r_bios[i];
		if (bio)
			FUNC2(bio);
	}

no_page:
	for (i = 0; i < frames / FRAMES_PER_PAGE; i++)
		if (pkt->pages[i])
			FUNC0(pkt->pages[i]);
	FUNC2(pkt->w_bio);
no_bio:
	FUNC3(pkt);
no_pkt:
	return NULL;
}