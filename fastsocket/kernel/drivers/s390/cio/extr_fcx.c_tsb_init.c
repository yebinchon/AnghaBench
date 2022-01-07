
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsb ;
struct tsb {int dummy; } ;


 int memset (struct tsb*,int ,int) ;

void tsb_init(struct tsb *tsb)
{
 memset(tsb, 0, sizeof(tsb));
}
