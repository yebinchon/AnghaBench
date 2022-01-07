
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long iop_pdata; unsigned long iop_pdatb; unsigned long iop_pdatc; unsigned long iop_pdatd; } ;


 TYPE_1__* io ;

__attribute__((used)) static unsigned long *cpm_pdat(int port)
{
 switch (port) {
 case 0:
  return &io->iop_pdata;
 case 1:
  return &io->iop_pdatb;
 case 2:
  return &io->iop_pdatc;
 case 3:
  return &io->iop_pdatd;
 }
}
