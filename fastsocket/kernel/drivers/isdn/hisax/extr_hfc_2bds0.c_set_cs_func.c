
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long data; void* function; } ;
struct IsdnCardState {int tqueue; TYPE_1__ dbusytimer; int * BC_Write_Reg; int * BC_Read_Reg; int * writeisacfifo; int * readisacfifo; int * writeisac; int * readisac; } ;


 int INIT_WORK (int *,int ) ;
 int ReadReg ;
 int WriteReg ;
 int dummyf ;
 scalar_t__ hfc_dbusy_timer ;
 int hfcd_bh ;
 int init_timer (TYPE_1__*) ;
 int readreghfcd ;
 int writereghfcd ;

void
set_cs_func(struct IsdnCardState *cs)
{
 cs->readisac = &readreghfcd;
 cs->writeisac = &writereghfcd;
 cs->readisacfifo = &dummyf;
 cs->writeisacfifo = &dummyf;
 cs->BC_Read_Reg = &ReadReg;
 cs->BC_Write_Reg = &WriteReg;
 cs->dbusytimer.function = (void *) hfc_dbusy_timer;
 cs->dbusytimer.data = (long) cs;
 init_timer(&cs->dbusytimer);
 INIT_WORK(&cs->tqueue, hfcd_bh);
}
