
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct dvb_bt8xx_card* priv; } ;
struct dvb_bt8xx_card {int nfeeds; int lock; int irq_err_ignore; int op_sync_orin; int gpio_mode; int bt; } ;


 int EINVAL ;
 int bt878_start (int ,int ,int ,int ) ;
 int dprintk (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvb_bt8xx_start_feed(struct dvb_demux_feed *dvbdmxfeed)
{
 struct dvb_demux*dvbdmx = dvbdmxfeed->demux;
 struct dvb_bt8xx_card *card = dvbdmx->priv;
 int rc;

 dprintk("dvb_bt8xx: start_feed\n");

 if (!dvbdmx->dmx.frontend)
  return -EINVAL;

 mutex_lock(&card->lock);
 card->nfeeds++;
 rc = card->nfeeds;
 if (card->nfeeds == 1)
  bt878_start(card->bt, card->gpio_mode,
       card->op_sync_orin, card->irq_err_ignore);
 mutex_unlock(&card->lock);
 return rc;
}
