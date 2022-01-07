
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3cmci_host {scalar_t__ pio_active; scalar_t__ complete_what; TYPE_2__* mrq; int pio_bytes; int pio_count; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int error; } ;


 scalar_t__ COMPLETION_FINALIZE ;
 int EINVAL ;
 scalar_t__ XFER_NONE ;
 scalar_t__ XFER_READ ;
 scalar_t__ XFER_WRITE ;
 int clear_imask (struct s3cmci_host*) ;
 int dbg (struct s3cmci_host*,int ,char*,char*,int ,int ) ;
 int dbg_err ;
 int do_pio_read (struct s3cmci_host*) ;
 int do_pio_write (struct s3cmci_host*) ;
 int finalize_request (struct s3cmci_host*) ;
 int s3cmci_disable_irq (struct s3cmci_host*,int) ;
 int s3cmci_enable_irq (struct s3cmci_host*,int) ;

__attribute__((used)) static void pio_tasklet(unsigned long data)
{
 struct s3cmci_host *host = (struct s3cmci_host *) data;

 s3cmci_disable_irq(host, 1);

 if (host->pio_active == XFER_WRITE)
  do_pio_write(host);

 if (host->pio_active == XFER_READ)
  do_pio_read(host);

 if (host->complete_what == COMPLETION_FINALIZE) {
  clear_imask(host);
  if (host->pio_active != XFER_NONE) {
   dbg(host, dbg_err, "unfinished %s "
       "- pio_count:[%u] pio_bytes:[%u]\n",
       (host->pio_active == XFER_READ) ? "read" : "write",
       host->pio_count, host->pio_bytes);

   if (host->mrq->data)
    host->mrq->data->error = -EINVAL;
  }

  s3cmci_enable_irq(host, 0);
  finalize_request(host);
 } else
  s3cmci_enable_irq(host, 1);
}
