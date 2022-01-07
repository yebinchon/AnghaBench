
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_data {int * orig_bios_tail; struct bio* orig_bios; scalar_t__ cache_valid; } ;
struct bio {struct bio* bi_next; } ;


 int EIO ;
 int bio_endio (struct bio*,int ) ;

__attribute__((used)) static void pkt_finish_packet(struct packet_data *pkt, int uptodate)
{
 struct bio *bio, *next;

 if (!uptodate)
  pkt->cache_valid = 0;


 bio = pkt->orig_bios;
 while (bio) {
  next = bio->bi_next;
  bio->bi_next = ((void*)0);
  bio_endio(bio, uptodate ? 0 : -EIO);
  bio = next;
 }
 pkt->orig_bios = pkt->orig_bios_tail = ((void*)0);
}
