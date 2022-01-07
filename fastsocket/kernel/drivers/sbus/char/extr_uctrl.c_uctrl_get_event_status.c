
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uctrl_txn {int outbits; int* outbuf; int * inbuf; scalar_t__ inbits; int opcode; } ;
struct TYPE_2__ {int event_status; } ;
struct uctrl_driver {TYPE_1__ status; } ;


 int READ_EVENT_STATUS ;
 int dprintk (char*) ;
 int uctrl_do_txn (struct uctrl_driver*,struct uctrl_txn*) ;

__attribute__((used)) static void uctrl_get_event_status(struct uctrl_driver *driver)
{
 struct uctrl_txn txn;
 u8 outbits[2];

 txn.opcode = READ_EVENT_STATUS;
 txn.inbits = 0;
 txn.outbits = 2;
 txn.inbuf = ((void*)0);
 txn.outbuf = outbits;

 uctrl_do_txn(driver, &txn);

 dprintk(("bytes %x %x\n", (outbits[0] & 0xff), (outbits[1] & 0xff)));
 driver->status.event_status =
  ((outbits[0] & 0xff) << 8) | (outbits[1] & 0xff);
 dprintk(("ev is %x\n", driver->status.event_status));
}
