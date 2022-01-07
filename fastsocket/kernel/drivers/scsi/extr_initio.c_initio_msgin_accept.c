
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {scalar_t__ addr; } ;


 int TSC_MSG_ACCEPT ;
 scalar_t__ TUL_SCmd ;
 int outb (int ,scalar_t__) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static int initio_msgin_accept(struct initio_host * host)
{
 outb(TSC_MSG_ACCEPT, host->addr + TUL_SCmd);
 return wait_tulip(host);
}
