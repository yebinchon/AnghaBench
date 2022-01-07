
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int list; } ;
struct TYPE_7__ {int list; } ;
struct TYPE_6__ {int list; } ;
struct TYPE_5__ {int lock; } ;
struct saa7164_port {int nr; int poll_interval; int read_interval; int irq_svc_interval; int svc_interval; int irq_interval; int wait_read; TYPE_4__ list_buf_free; TYPE_3__ list_buf_used; int dmaqueue_lock; TYPE_2__ dmaqueue; TYPE_1__ dvb; int workenc; int type; struct saa7164_dev* dev; } ;
struct saa7164_dev {struct saa7164_port* ports; } ;


 int BUG () ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SAA7164_MAX_PORTS ;
 int SAA7164_MPEG_DVB ;
 int SAA7164_MPEG_ENCODER ;
 int SAA7164_MPEG_VBI ;
 int SAA7164_PORT_ENC1 ;
 int SAA7164_PORT_ENC2 ;
 int SAA7164_PORT_TS1 ;
 int SAA7164_PORT_TS2 ;
 int SAA7164_PORT_VBI1 ;
 int SAA7164_PORT_VBI2 ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int saa7164_histogram_reset (int *,char*) ;
 int saa7164_work_enchandler ;
 int saa7164_work_vbihandler ;

__attribute__((used)) static int saa7164_port_init(struct saa7164_dev *dev, int portnr)
{
 struct saa7164_port *port = 0;

 if ((portnr < 0) || (portnr >= SAA7164_MAX_PORTS))
  BUG();

 port = &dev->ports[portnr];

 port->dev = dev;
 port->nr = portnr;

 if ((portnr == SAA7164_PORT_TS1) || (portnr == SAA7164_PORT_TS2))
  port->type = SAA7164_MPEG_DVB;
 else
 if ((portnr == SAA7164_PORT_ENC1) || (portnr == SAA7164_PORT_ENC2)) {
  port->type = SAA7164_MPEG_ENCODER;


  INIT_WORK(&port->workenc, saa7164_work_enchandler);
 } else if ((portnr == SAA7164_PORT_VBI1) || (portnr == SAA7164_PORT_VBI2)) {
  port->type = SAA7164_MPEG_VBI;


  INIT_WORK(&port->workenc, saa7164_work_vbihandler);
 } else
  BUG();


 mutex_init(&port->dvb.lock);
 INIT_LIST_HEAD(&port->dmaqueue.list);
 mutex_init(&port->dmaqueue_lock);

 INIT_LIST_HEAD(&port->list_buf_used.list);
 INIT_LIST_HEAD(&port->list_buf_free.list);
 init_waitqueue_head(&port->wait_read);


 saa7164_histogram_reset(&port->irq_interval, "irq intervals");
 saa7164_histogram_reset(&port->svc_interval, "deferred intervals");
 saa7164_histogram_reset(&port->irq_svc_interval,
  "irq to deferred intervals");
 saa7164_histogram_reset(&port->read_interval,
  "encoder/vbi read() intervals");
 saa7164_histogram_reset(&port->poll_interval,
  "encoder/vbi poll() intervals");

 return 0;
}
