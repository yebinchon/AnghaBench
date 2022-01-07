
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int written ;
struct TYPE_2__ {int secs_w; int secs_rg; int pkt_started; } ;
struct pktcdvd_device {TYPE_1__ stats; int bdev; } ;
struct packet_data {int sector; int frames; int io_wait; int * pages; struct bio** r_bios; scalar_t__ cache_valid; int lock; struct bio* orig_bios; int io_errors; } ;
struct bio_vec {int dummy; } ;
struct bio {int bi_sector; int bi_size; int bi_max_vecs; int bi_rw; int bi_destructor; struct bio_vec* bi_io_vec; struct packet_data* bi_private; int bi_end_io; int bi_bdev; struct bio* bi_next; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int CD_FRAMESIZE ;
 int PACKET_MAX_SIZE ;
 int PAGE_SIZE ;
 int READ ;
 int VPRINTK (char*,int,...) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int bio_add_page (struct bio*,int ,int,int) ;
 int bio_init (struct bio*) ;
 int memset (char*,int ,int) ;
 int pkt_bio_destructor ;
 int pkt_end_io_read ;
 int pkt_queue_bio (struct pktcdvd_device*,struct bio*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pkt_gather_data(struct pktcdvd_device *pd, struct packet_data *pkt)
{
 int frames_read = 0;
 struct bio *bio;
 int f;
 char written[PACKET_MAX_SIZE];

 BUG_ON(!pkt->orig_bios);

 atomic_set(&pkt->io_wait, 0);
 atomic_set(&pkt->io_errors, 0);




 memset(written, 0, sizeof(written));
 spin_lock(&pkt->lock);
 for (bio = pkt->orig_bios; bio; bio = bio->bi_next) {
  int first_frame = (bio->bi_sector - pkt->sector) / (CD_FRAMESIZE >> 9);
  int num_frames = bio->bi_size / CD_FRAMESIZE;
  pd->stats.secs_w += num_frames * (CD_FRAMESIZE >> 9);
  BUG_ON(first_frame < 0);
  BUG_ON(first_frame + num_frames > pkt->frames);
  for (f = first_frame; f < first_frame + num_frames; f++)
   written[f] = 1;
 }
 spin_unlock(&pkt->lock);

 if (pkt->cache_valid) {
  VPRINTK("pkt_gather_data: zone %llx cached\n",
   (unsigned long long)pkt->sector);
  goto out_account;
 }




 for (f = 0; f < pkt->frames; f++) {
  struct bio_vec *vec;

  int p, offset;
  if (written[f])
   continue;
  bio = pkt->r_bios[f];
  vec = bio->bi_io_vec;
  bio_init(bio);
  bio->bi_max_vecs = 1;
  bio->bi_sector = pkt->sector + f * (CD_FRAMESIZE >> 9);
  bio->bi_bdev = pd->bdev;
  bio->bi_end_io = pkt_end_io_read;
  bio->bi_private = pkt;
  bio->bi_io_vec = vec;
  bio->bi_destructor = pkt_bio_destructor;

  p = (f * CD_FRAMESIZE) / PAGE_SIZE;
  offset = (f * CD_FRAMESIZE) % PAGE_SIZE;
  VPRINTK("pkt_gather_data: Adding frame %d, page:%p offs:%d\n",
   f, pkt->pages[p], offset);
  if (!bio_add_page(bio, pkt->pages[p], CD_FRAMESIZE, offset))
   BUG();

  atomic_inc(&pkt->io_wait);
  bio->bi_rw = READ;
  pkt_queue_bio(pd, bio);
  frames_read++;
 }

out_account:
 VPRINTK("pkt_gather_data: need %d frames for zone %llx\n",
  frames_read, (unsigned long long)pkt->sector);
 pd->stats.pkt_started++;
 pd->stats.secs_rg += frames_read * (CD_FRAMESIZE >> 9);
}
