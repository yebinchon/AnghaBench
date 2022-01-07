
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int unchar ;
struct TYPE_8__ {TYPE_3__* ogmb; } ;
struct TYPE_11__ {int next_ogmb; TYPE_2__* sh; TYPE_1__ mb; } ;
struct TYPE_10__ {int status; scalar_t__ scbptr; } ;
struct TYPE_9__ {int host_lock; } ;
typedef int Scb ;
typedef TYPE_3__ Mailbox ;
typedef TYPE_4__ Adapter ;


 int OGMB_CNT ;
 int START_OGMB ;
 int any2scsi (int*,int) ;
 int command_out (TYPE_4__*,int*,int) ;
 int dprintk (char*,...) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wd7000_enable_intr (TYPE_4__*) ;

__attribute__((used)) static int mail_out(Adapter * host, Scb * scbptr)



{
 int i, ogmb;
 unsigned long flags;
 unchar start_ogmb;
 Mailbox *ogmbs = host->mb.ogmb;
 int *next_ogmb = &(host->next_ogmb);

 dprintk("wd7000_mail_out: 0x%06lx", (long) scbptr);


 spin_lock_irqsave(host->sh->host_lock, flags);
 ogmb = *next_ogmb;
 for (i = 0; i < OGMB_CNT; i++) {
  if (ogmbs[ogmb].status == 0) {
   dprintk(" using OGMB 0x%x", ogmb);
   ogmbs[ogmb].status = 1;
   any2scsi((unchar *) ogmbs[ogmb].scbptr, (int) scbptr);

   *next_ogmb = (ogmb + 1) % OGMB_CNT;
   break;
  } else
   ogmb = (ogmb + 1) % OGMB_CNT;
 }
 spin_unlock_irqrestore(host->sh->host_lock, flags);

 dprintk(", scb is 0x%06lx", (long) scbptr);

 if (i >= OGMB_CNT) {
  dprintk(", no free OGMBs.\n");
  return (0);
 }

 wd7000_enable_intr(host);

 start_ogmb = START_OGMB | ogmb;
 command_out(host, &start_ogmb, 1);

 dprintk(", awaiting interrupt.\n");

 return (1);
}
