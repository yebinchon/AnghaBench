
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_2__ {unsigned char prb; } ;


 TYPE_1__ ciaa ;

__attribute__((used)) static unsigned char amiga_read_data(struct parport *p)
{

 return ciaa.prb;
}
