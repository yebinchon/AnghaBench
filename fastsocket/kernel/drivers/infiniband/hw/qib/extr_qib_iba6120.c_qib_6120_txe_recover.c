
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pcidev; } ;


 int qib_devinfo (int ,char*) ;
 int qib_unordered_wc () ;

__attribute__((used)) static void qib_6120_txe_recover(struct qib_devdata *dd)
{
 if (!qib_unordered_wc())
  qib_devinfo(dd->pcidev,
       "Recovering from TXE PIO parity error\n");
}
