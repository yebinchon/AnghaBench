
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybebadio (unsigned long) ;

void sh7751se_outsl(unsigned long port, const void *addr, unsigned long count)
{
 maybebadio(port);
}
