
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;int serial_number; } ;
struct TYPE_2__ {struct scsi_cmnd* sc; } ;


 scalar_t__ DBG ;
 size_t SIMSCSI_REQ_QUEUE_LEN ;
 int atomic_dec (int *) ;
 int num_reqs ;
 int printk (char*,int ) ;
 TYPE_1__* queue ;
 size_t rd ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void
simscsi_interrupt (unsigned long val)
{
 struct scsi_cmnd *sc;

 while ((sc = queue[rd].sc) != ((void*)0)) {
  atomic_dec(&num_reqs);
  queue[rd].sc = ((void*)0);
  if (DBG)
   printk("simscsi_interrupt: done with %ld\n", sc->serial_number);
  (*sc->scsi_done)(sc);
  rd = (rd + 1) % SIMSCSI_REQ_QUEUE_LEN;
 }
}
