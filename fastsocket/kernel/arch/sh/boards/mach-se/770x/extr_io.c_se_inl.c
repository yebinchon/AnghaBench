
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybebadio (unsigned long) ;

unsigned int se_inl(unsigned long port)
{
 maybebadio(port);
 return 0;
}
