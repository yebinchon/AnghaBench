
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pport; int pcidev; } ;


 int qib_devinfo (int ,char*) ;
 int qib_disarm_7220_senderrbufs (int ) ;

__attribute__((used)) static void qib_7220_txe_recover(struct qib_devdata *dd)
{
 qib_devinfo(dd->pcidev, "Recovering from TXE PIO parity error\n");
 qib_disarm_7220_senderrbufs(dd->pport);
}
