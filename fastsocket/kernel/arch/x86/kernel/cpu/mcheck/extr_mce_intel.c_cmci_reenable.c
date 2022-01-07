
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmci_discover (int,int ) ;
 scalar_t__ cmci_supported (int*) ;

void cmci_reenable(void)
{
 int banks;
 if (cmci_supported(&banks))
  cmci_discover(banks, 0);
}
