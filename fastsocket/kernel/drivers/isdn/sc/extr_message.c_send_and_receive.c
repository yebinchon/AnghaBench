
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned char type; unsigned char class; unsigned char code; unsigned char phy_link_no; } ;
struct TYPE_3__ {int want_async_messages; int devicename; TYPE_2__ async_msg; } ;
typedef int RspMessage ;


 int EINVAL ;
 int EIO ;
 int ETIME ;
 int IS_VALID_CARD (int) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int pr_debug (char*,...) ;
 TYPE_1__** sc_adapter ;
 int schedule_timeout_interruptible (int) ;
 int sendmessage (int,unsigned int,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned int*) ;

int send_and_receive(int card,
  unsigned int procid,
  unsigned char type,
  unsigned char class,
  unsigned char code,
  unsigned char link,
   unsigned char data_len,
  unsigned char *data,
  RspMessage *mesgdata,
  int timeout)
{
 int retval;
 int tries;

 if (!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -EINVAL;
 }

 sc_adapter[card]->want_async_messages = 1;
 retval = sendmessage(card, procid, type, class, code, link,
   data_len, (unsigned int *) data);

 if (retval) {
  pr_debug("%s: SendMessage failed in SAR\n",
   sc_adapter[card]->devicename);
  sc_adapter[card]->want_async_messages = 0;
  return -EIO;
 }

 tries = 0;

 while (tries < timeout) {
  schedule_timeout_interruptible(1);

  pr_debug("SAR waiting..\n");




  if ((sc_adapter[card]->async_msg.type == type) &&
      (sc_adapter[card]->async_msg.class == class) &&
      (sc_adapter[card]->async_msg.code == code) &&
      (sc_adapter[card]->async_msg.phy_link_no == link)) {




   pr_debug("%s: Got ASYNC message\n",
    sc_adapter[card]->devicename);
   memcpy(mesgdata, &(sc_adapter[card]->async_msg),
    sizeof(RspMessage));
   sc_adapter[card]->want_async_messages = 0;
   return 0;
  }

     tries++;
 }

 pr_debug("%s: SAR message timeout\n", sc_adapter[card]->devicename);
 sc_adapter[card]->want_async_messages = 0;
 return -ETIME;
}
