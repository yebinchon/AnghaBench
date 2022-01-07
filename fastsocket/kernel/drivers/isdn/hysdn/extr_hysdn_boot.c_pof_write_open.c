
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tPofFileHdr ;
struct TYPE_7__ {unsigned char* BootBuf; } ;
struct boot_data {int last_error; TYPE_1__ buf; int pof_state; scalar_t__ BufSize; } ;
struct TYPE_8__ {int debug_flags; int state; scalar_t__ (* testram ) (TYPE_2__*) ;int (* stopcard ) (TYPE_2__*) ;struct boot_data* boot; } ;
typedef TYPE_2__ hysdn_card ;


 int CARD_STATE_BOOTERR ;
 int CARD_STATE_BOOTING ;
 int EFAULT ;
 int ERR_ALREADY_BOOT ;
 int ERR_BOARD_DPRAM ;
 int GFP_KERNEL ;
 int LOG_MEM_ERR ;
 int LOG_POF_OPEN ;
 int POF_READ_FILE_HEAD ;
 int StartDecryption (struct boot_data*) ;
 int hysdn_addlog (TYPE_2__*,char*) ;
 struct boot_data* kzalloc (int,int ) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_2__*) ;

int
pof_write_open(hysdn_card * card, unsigned char **bufp)
{
 struct boot_data *boot;

 if (card->boot) {
  if (card->debug_flags & LOG_POF_OPEN)
   hysdn_addlog(card, "POF open: already opened for boot");
  return (-ERR_ALREADY_BOOT);
 }

 if (!(boot = kzalloc(sizeof(struct boot_data), GFP_KERNEL))) {
  if (card->debug_flags & LOG_MEM_ERR)
   hysdn_addlog(card, "POF open: unable to allocate mem");
  return (-EFAULT);
 }
 card->boot = boot;
 card->state = CARD_STATE_BOOTING;

 card->stopcard(card);
 if (card->testram(card)) {
  if (card->debug_flags & LOG_POF_OPEN)
   hysdn_addlog(card, "POF open: DPRAM test failure");
  boot->last_error = -ERR_BOARD_DPRAM;
  card->state = CARD_STATE_BOOTERR;
  return (boot->last_error);
 }
 boot->BufSize = 0;
 boot->pof_state = POF_READ_FILE_HEAD;
 StartDecryption(boot);

 if (card->debug_flags & LOG_POF_OPEN)
  hysdn_addlog(card, "POF open: success");

 *bufp = boot->buf.BootBuf;
 return (sizeof(tPofFileHdr));
}
