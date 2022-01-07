
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {scalar_t__ phase; scalar_t__ addr; } ;


 scalar_t__ MSG_OUT ;
 int MSG_REJ ;
 int TSC_SET_ACK ;
 int TSC_SET_ATN ;
 int TSC_XF_FIFO_OUT ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SFifo ;
 scalar_t__ TUL_SSignal ;
 int inb (scalar_t__) ;
 int initio_msgin_accept (struct initio_host*) ;
 int outb (int,scalar_t__) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static int initio_msgout_reject(struct initio_host * host)
{
 outb(((inb(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7)) | TSC_SET_ATN), host->addr + TUL_SSignal);

 if (initio_msgin_accept(host) == -1)
  return -1;

 if (host->phase == MSG_OUT) {
  outb(MSG_REJ, host->addr + TUL_SFifo);
  outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
  return wait_tulip(host);
 }
 return host->phase;
}
