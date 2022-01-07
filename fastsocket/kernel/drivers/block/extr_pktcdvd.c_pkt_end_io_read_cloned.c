
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int dummy; } ;
struct packet_stacked_data {int bio; struct pktcdvd_device* pd; } ;
struct bio {struct packet_stacked_data* bi_private; } ;


 int bio_endio (int ,int) ;
 int bio_put (struct bio*) ;
 int mempool_free (struct packet_stacked_data*,int ) ;
 int pkt_bio_finished (struct pktcdvd_device*) ;
 int psd_pool ;

__attribute__((used)) static void pkt_end_io_read_cloned(struct bio *bio, int err)
{
 struct packet_stacked_data *psd = bio->bi_private;
 struct pktcdvd_device *pd = psd->pd;

 bio_put(bio);
 bio_endio(psd->bio, err);
 mempool_free(psd, psd_pool);
 pkt_bio_finished(pd);
}
