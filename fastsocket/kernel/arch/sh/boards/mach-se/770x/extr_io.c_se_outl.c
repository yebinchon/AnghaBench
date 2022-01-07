
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybebadio (unsigned long) ;

void se_outl(unsigned int value, unsigned long port)
{
 maybebadio(port);
}
