
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_request {int (* done ) (struct mmc_request*) ;TYPE_3__* stop; TYPE_2__* data; struct mmc_command* cmd; } ;
struct mmc_host {int led; TYPE_1__* ops; } ;
struct mmc_command {int error; int* resp; int opcode; scalar_t__ retries; } ;
struct TYPE_6__ {int error; int* resp; int opcode; } ;
struct TYPE_5__ {int error; int bytes_xfered; } ;
struct TYPE_4__ {int (* request ) (struct mmc_host*,struct mmc_request*) ;} ;


 int LED_OFF ;
 int R1_SPI_ILLEGAL_COMMAND ;
 int led_trigger_event (int ,int ) ;
 scalar_t__ mmc_host_is_spi (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int ,int,...) ;
 int stub1 (struct mmc_host*,struct mmc_request*) ;
 int stub2 (struct mmc_request*) ;

void mmc_request_done(struct mmc_host *host, struct mmc_request *mrq)
{
 struct mmc_command *cmd = mrq->cmd;
 int err = cmd->error;

 if (err && cmd->retries && mmc_host_is_spi(host)) {
  if (cmd->resp[0] & R1_SPI_ILLEGAL_COMMAND)
   cmd->retries = 0;
 }

 if (err && cmd->retries) {
  pr_debug("%s: req failed (CMD%u): %d, retrying...\n",
   mmc_hostname(host), cmd->opcode, err);

  cmd->retries--;
  cmd->error = 0;
  host->ops->request(host, mrq);
 } else {
  led_trigger_event(host->led, LED_OFF);

  pr_debug("%s: req done (CMD%u): %d: %08x %08x %08x %08x\n",
   mmc_hostname(host), cmd->opcode, err,
   cmd->resp[0], cmd->resp[1],
   cmd->resp[2], cmd->resp[3]);

  if (mrq->data) {
   pr_debug("%s:     %d bytes transferred: %d\n",
    mmc_hostname(host),
    mrq->data->bytes_xfered, mrq->data->error);
  }

  if (mrq->stop) {
   pr_debug("%s:     (CMD%u): %d: %08x %08x %08x %08x\n",
    mmc_hostname(host), mrq->stop->opcode,
    mrq->stop->error,
    mrq->stop->resp[0], mrq->stop->resp[1],
    mrq->stop->resp[2], mrq->stop->resp[3]);
  }

  if (mrq->done)
   mrq->done(mrq);
 }
}
