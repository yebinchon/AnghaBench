
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int* reply; int sent; int complete; int* data; int reply_len; int (* done ) (struct adb_request*) ;struct adb_request* next; int reply_expected; int nbytes; } ;
typedef int irqreturn_t ;


 size_t ACR ;
 size_t B ;
 int BUG_ON (int) ;
 int CTLR_IRQ ;
 size_t IFR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 size_t SR ;
 int SR_INT ;
 int SR_OUT ;
 int ST_CMD ;
 int ST_EVEN ;
 int ST_IDLE ;
 int ST_MASK ;
 int adb_input (int*,int,int ) ;
 int autopoll_devs ;
 struct adb_request* current_req ;
 int data_index ;

 int last_status ;
 int macii_autopoll (int ) ;
 int macii_queue_poll () ;
 int macii_start () ;
 int macii_state ;
 int need_autopoll () ;


 int reading_reply ;
 int* reply_buf ;
 int reply_len ;
 int* reply_ptr ;

 int srq_asserted ;
 int status ;
 int stub1 (struct adb_request*) ;
 int stub2 (struct adb_request*) ;
 int* via ;

__attribute__((used)) static irqreturn_t macii_interrupt(int irq, void *arg)
{
 int x;
 static int entered;
 struct adb_request *req;

 if (!arg) {

  if (via[IFR] & SR_INT)
   via[IFR] = SR_INT;
  else
   return IRQ_NONE;
 }

 BUG_ON(entered++);

 last_status = status;
 status = via[B] & (ST_MASK|CTLR_IRQ);

 switch (macii_state) {
  case 131:
   if (reading_reply) {
    reply_ptr = current_req->reply;
   } else {
    BUG_ON(current_req != ((void*)0));
    reply_ptr = reply_buf;
   }

   x = via[SR];

   if ((status & CTLR_IRQ) && (x == 0xFF)) {



    reply_len = 0;
    srq_asserted = 0;
    macii_state = 130;
   } else {
    macii_state = 129;
    *reply_ptr = x;
    reply_len = 1;
   }


   via[B] = (via[B] & ~ST_MASK) | ST_EVEN;
   break;

  case 128:
   req = current_req;
   if (data_index >= req->nbytes) {
    req->sent = 1;
    macii_state = 131;

    if (req->reply_expected) {
     reading_reply = 1;
    } else {
     req->complete = 1;
     current_req = req->next;
     if (req->done) (*req->done)(req);

     if (current_req)
      macii_start();
     else
      if (need_autopoll())
       macii_autopoll(autopoll_devs);
    }

    if (macii_state == 131) {

     via[ACR] &= ~SR_OUT;
     x = via[SR];

     via[B] = (via[B] & ~ST_MASK) | ST_IDLE;
    }
   } else {
    via[SR] = req->data[data_index++];

    if ( (via[B] & ST_MASK) == ST_CMD ) {

     via[B] = (via[B] & ~ST_MASK) | ST_EVEN;
    } else {

     via[B] ^= ST_MASK;
    }
   }
   break;

  case 129:
   x = via[SR];
   BUG_ON((status & ST_MASK) == ST_CMD ||
          (status & ST_MASK) == ST_IDLE);
   srq_asserted = 0;
   if (!(status & CTLR_IRQ)) {
    if (x == 0xFF) {
     if (!(last_status & CTLR_IRQ)) {
      macii_state = 130;
      reply_len = 0;
      srq_asserted = 1;
     }
    } else if (x == 0x00) {
     macii_state = 130;
     if (!(last_status & CTLR_IRQ))
      srq_asserted = 1;
    }
   }

   if (macii_state == 129) {
    BUG_ON(reply_len > 15);
    reply_ptr++;
    *reply_ptr = x;
    reply_len++;
   }


   via[B] ^= ST_MASK;
   break;

  case 130:
   x = via[SR];

   if (reading_reply) {
    reading_reply = 0;
    req = current_req;
    req->reply_len = reply_len;
    req->complete = 1;
    current_req = req->next;
    if (req->done) (*req->done)(req);
   } else if (reply_len && autopoll_devs)
    adb_input(reply_buf, reply_len, 0);

   macii_state = 131;


   if (srq_asserted)
    macii_queue_poll();

   if (current_req)
    macii_start();
   else
    if (need_autopoll())
     macii_autopoll(autopoll_devs);

   if (macii_state == 131)
    via[B] = (via[B] & ~ST_MASK) | ST_IDLE;
   break;

  default:
  break;
 }

 entered--;
 return IRQ_HANDLED;
}
