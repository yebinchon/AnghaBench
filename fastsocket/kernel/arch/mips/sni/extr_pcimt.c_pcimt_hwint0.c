
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

__attribute__((used)) static void pcimt_hwint0(void)
{
 panic("Received int0 but no handler yet ...");
}
