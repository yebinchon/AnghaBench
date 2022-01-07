
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tty_struct {int dummy; } ;
struct TYPE_13__ {struct tty_struct* tty; } ;
struct TYPE_12__ {int clock_speed; } ;
struct TYPE_14__ {int tx_count; int tmp_rx_buf_count; TYPE_2__ port; TYPE_1__ params; int lock; int tmp_rx_buf; int init_error; } ;
typedef TYPE_3__ SLMP_INFO ;


 int DiagStatus_DmaFailure ;
 int TESTFRAMESIZE ;
 int enable_loopback (TYPE_3__*,int) ;
 int hdlc_mode (TYPE_3__*) ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int memset (int ,int ,int) ;
 int msleep_interruptible (int) ;
 int reset_adapter (TYPE_3__*) ;
 scalar_t__ rx_get_frame (TYPE_3__*) ;
 int rx_start (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_load_dma_buffer (TYPE_3__*,unsigned char*,int) ;
 int tx_start (TYPE_3__*) ;

__attribute__((used)) static bool loopback_test(SLMP_INFO *info)
{


 unsigned long timeout;
 u16 count = 20;
 unsigned char buf[20];
 bool rc = 0;
 unsigned long flags;

 struct tty_struct *oldtty = info->port.tty;
 u32 speed = info->params.clock_speed;

 info->params.clock_speed = 3686400;
 info->port.tty = ((void*)0);


 info->init_error = DiagStatus_DmaFailure;


 for (count = 0; count < 20;++count)
  buf[count] = (unsigned char)count;

 memset(info->tmp_rx_buf,0,20);


 spin_lock_irqsave(&info->lock,flags);
 hdlc_mode(info);
 enable_loopback(info,1);
        rx_start(info);
 info->tx_count = count;
 tx_load_dma_buffer(info,buf,count);
 tx_start(info);
 spin_unlock_irqrestore(&info->lock,flags);



 for ( timeout = 100; timeout; --timeout ) {
  msleep_interruptible(10);

  if (rx_get_frame(info)) {
   rc = 1;
   break;
  }
 }


 if (rc &&
     ( info->tmp_rx_buf_count != count ||
       memcmp(buf, info->tmp_rx_buf,count))) {
  rc = 0;
 }

 spin_lock_irqsave(&info->lock,flags);
 reset_adapter(info);
 spin_unlock_irqrestore(&info->lock,flags);

 info->params.clock_speed = speed;
 info->port.tty = oldtty;

 return rc;
}
