
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dvb {scalar_t__ nfeeds; int lock; int * thread; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct videobuf_dvb* priv; } ;


 int kthread_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int videobuf_dvb_stop_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct videobuf_dvb *dvb = demux->priv;
 int err = 0;

 mutex_lock(&dvb->lock);
 dvb->nfeeds--;
 if (0 == dvb->nfeeds && ((void*)0) != dvb->thread) {
  err = kthread_stop(dvb->thread);
  dvb->thread = ((void*)0);
 }
 mutex_unlock(&dvb->lock);
 return err;
}
