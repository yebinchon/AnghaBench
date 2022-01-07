
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t tcal; } ;
struct tccb {TYPE_1__ tcah; } ;



__attribute__((used)) static inline size_t tca_size(struct tccb *tccb)
{
 return tccb->tcah.tcal - 12;
}
