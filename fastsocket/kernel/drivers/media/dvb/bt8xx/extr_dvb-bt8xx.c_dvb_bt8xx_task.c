
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_bt8xx_card {TYPE_1__* bt; int demux; } ;
struct TYPE_2__ {size_t last_block; size_t finished_block; size_t block_bytes; int block_count; int * buf_cpu; scalar_t__ TS_Size; } ;


 int dvb_dmx_swfilter (int *,int *,size_t) ;
 int dvb_dmx_swfilter_204 (int *,int *,size_t) ;
 int stub1 (int *,int *,size_t) ;

__attribute__((used)) static void dvb_bt8xx_task(unsigned long data)
{
 struct dvb_bt8xx_card *card = (struct dvb_bt8xx_card *)data;



 while (card->bt->last_block != card->bt->finished_block) {
  (card->bt->TS_Size ? dvb_dmx_swfilter_204 : dvb_dmx_swfilter)
   (&card->demux,
    &card->bt->buf_cpu[card->bt->last_block *
         card->bt->block_bytes],
    card->bt->block_bytes);
  card->bt->last_block = (card->bt->last_block + 1) %
     card->bt->block_count;
 }
}
