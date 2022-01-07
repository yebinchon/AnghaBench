
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int state; int* data; int* head; scalar_t__ len; scalar_t__ truesize; void* in_frame; } ;
struct stir_cb {TYPE_2__* netdev; TYPE_3__ rx_buff; } ;
typedef TYPE_3__ iobuff_t ;
typedef int __u8 ;
struct TYPE_4__ {int rx_errors; int rx_frame_errors; int rx_over_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; int name; } ;



 void* FALSE ;




 int IRDA_TRANS ;


 void* TRUE ;
 int fir_eof (struct stir_cb*) ;
 int pr_debug (char*,int ,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void stir_fir_chars(struct stir_cb *stir,
       const __u8 *bytes, int len)
{
 iobuff_t *rx_buff = &stir->rx_buff;
 int i;

 for (i = 0; i < len; i++) {
  __u8 byte = bytes[i];

  switch(rx_buff->state) {
  case 128:

   if (unlikely(byte != 132))
    continue;

   rx_buff->state = 134;


   rx_buff->data = rx_buff->head;
   rx_buff->len = 0;
   continue;

  case 129:
   if (byte == 132) {
    pr_debug("%s: got EOF after escape\n",
      stir->netdev->name);
    goto frame_error;
   }
   rx_buff->state = 130;
   byte ^= IRDA_TRANS;
   break;

  case 134:

   if (byte == 132)
    continue;
   rx_buff->state = 130;
   rx_buff->in_frame = TRUE;


  case 130:
   switch(byte) {
   case 133:
    rx_buff->state = 129;
    continue;
   case 131:

    pr_debug("%s: got XBOF without escape\n",
      stir->netdev->name);
    goto frame_error;
   case 132:
    rx_buff->state = 128;
    rx_buff->in_frame = FALSE;
    fir_eof(stir);
    continue;
   }
   break;
  }


  if (unlikely(rx_buff->len >= rx_buff->truesize)) {
   pr_debug("%s: fir frame exceeds %d\n",
     stir->netdev->name, rx_buff->truesize);
   ++stir->netdev->stats.rx_over_errors;
   goto error_recovery;
  }

  rx_buff->data[rx_buff->len++] = byte;
  continue;

 frame_error:
  ++stir->netdev->stats.rx_frame_errors;

 error_recovery:
  ++stir->netdev->stats.rx_errors;
  rx_buff->state = 128;
  rx_buff->in_frame = FALSE;
 }
}
