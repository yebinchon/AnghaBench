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
typedef  int /*<<< orphan*/  written ;
struct TYPE_2__ {int secs_w; int secs_rg; int /*<<< orphan*/  pkt_started; } ;
struct pktcdvd_device {TYPE_1__ stats; int /*<<< orphan*/  bdev; } ;
struct packet_data {int sector; int frames; int /*<<< orphan*/  io_wait; int /*<<< orphan*/ * pages; struct bio** r_bios; scalar_t__ cache_valid; int /*<<< orphan*/  lock; struct bio* orig_bios; int /*<<< orphan*/  io_errors; } ;
struct bio_vec {int dummy; } ;
struct bio {int bi_sector; int bi_size; int bi_max_vecs; int /*<<< orphan*/  bi_rw; int /*<<< orphan*/  bi_destructor; struct bio_vec* bi_io_vec; struct packet_data* bi_private; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/  bi_bdev; struct bio* bi_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CD_FRAMESIZE ; 
 int PACKET_MAX_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pkt_bio_destructor ; 
 int /*<<< orphan*/  pkt_end_io_read ; 
 int /*<<< orphan*/  FUNC8 (struct pktcdvd_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct pktcdvd_device *pd, struct packet_data *pkt)
{
	int frames_read = 0;
	struct bio *bio;
	int f;
	char written[PACKET_MAX_SIZE];

	FUNC1(!pkt->orig_bios);

	FUNC4(&pkt->io_wait, 0);
	FUNC4(&pkt->io_errors, 0);

	/*
	 * Figure out which frames we need to read before we can write.
	 */
	FUNC7(written, 0, sizeof(written));
	FUNC9(&pkt->lock);
	for (bio = pkt->orig_bios; bio; bio = bio->bi_next) {
		int first_frame = (bio->bi_sector - pkt->sector) / (CD_FRAMESIZE >> 9);
		int num_frames = bio->bi_size / CD_FRAMESIZE;
		pd->stats.secs_w += num_frames * (CD_FRAMESIZE >> 9);
		FUNC1(first_frame < 0);
		FUNC1(first_frame + num_frames > pkt->frames);
		for (f = first_frame; f < first_frame + num_frames; f++)
			written[f] = 1;
	}
	FUNC10(&pkt->lock);

	if (pkt->cache_valid) {
		FUNC2("pkt_gather_data: zone %llx cached\n",
			(unsigned long long)pkt->sector);
		goto out_account;
	}

	/*
	 * Schedule reads for missing parts of the packet.
	 */
	for (f = 0; f < pkt->frames; f++) {
		struct bio_vec *vec;

		int p, offset;
		if (written[f])
			continue;
		bio = pkt->r_bios[f];
		vec = bio->bi_io_vec;
		FUNC6(bio);
		bio->bi_max_vecs = 1;
		bio->bi_sector = pkt->sector + f * (CD_FRAMESIZE >> 9);
		bio->bi_bdev = pd->bdev;
		bio->bi_end_io = pkt_end_io_read;
		bio->bi_private = pkt;
		bio->bi_io_vec = vec;
		bio->bi_destructor = pkt_bio_destructor;

		p = (f * CD_FRAMESIZE) / PAGE_SIZE;
		offset = (f * CD_FRAMESIZE) % PAGE_SIZE;
		FUNC2("pkt_gather_data: Adding frame %d, page:%p offs:%d\n",
			f, pkt->pages[p], offset);
		if (!FUNC5(bio, pkt->pages[p], CD_FRAMESIZE, offset))
			FUNC0();

		FUNC3(&pkt->io_wait);
		bio->bi_rw = READ;
		FUNC8(pd, bio);
		frames_read++;
	}

out_account:
	FUNC2("pkt_gather_data: need %d frames for zone %llx\n",
		frames_read, (unsigned long long)pkt->sector);
	pd->stats.pkt_started++;
	pd->stats.secs_rg += frames_read * (CD_FRAMESIZE >> 9);
}