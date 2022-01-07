
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybebadio (unsigned long) ;

void titan_outsl(unsigned long port, const void *src, unsigned long count)
{
        maybebadio(port);
}
