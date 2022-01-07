
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTR ;
 int FLOWCTL_CLEAR (int ) ;
 int LSR_WAIT_FOR (int ) ;
 int TEMT ;
 int THRE ;

void gdbstub_tx_flush(void)
{
 LSR_WAIT_FOR(TEMT);
 LSR_WAIT_FOR(THRE);
 FLOWCTL_CLEAR(DTR);
}
