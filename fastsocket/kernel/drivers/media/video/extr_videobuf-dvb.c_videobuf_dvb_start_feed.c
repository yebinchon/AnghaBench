
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_dvb {int nfeeds; int lock; int * thread; int name; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct videobuf_dvb* priv; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * kthread_run (int ,struct videobuf_dvb*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int videobuf_dvb_thread ;

__attribute__((used)) static int videobuf_dvb_start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct videobuf_dvb *dvb = demux->priv;
 int rc;

 if (!demux->dmx.frontend)
  return -EINVAL;

 mutex_lock(&dvb->lock);
 dvb->nfeeds++;
 rc = dvb->nfeeds;

 if (((void*)0) != dvb->thread)
  goto out;
 dvb->thread = kthread_run(videobuf_dvb_thread,
      dvb, "%s dvb", dvb->name);
 if (IS_ERR(dvb->thread)) {
  rc = PTR_ERR(dvb->thread);
  dvb->thread = ((void*)0);
 }

out:
 mutex_unlock(&dvb->lock);
 return rc;
}
