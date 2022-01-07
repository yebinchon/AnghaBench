
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct av7110 {TYPE_1__* ci_slot; } ;
struct TYPE_2__ {int flags; } ;


 int CA_CI_MODULE_PRESENT ;
 int CA_CI_MODULE_READY ;


 int dprintk (int,char*,struct av7110*) ;

void CI_handle(struct av7110 *av7110, u8 *data, u16 len)
{
 dprintk(8, "av7110:%p\n",av7110);

 if (len < 3)
  return;
 switch (data[0]) {
 case 129:
  if (data[2] != 1 && data[2] != 2)
   break;
  switch (data[1]) {
  case 0:
   av7110->ci_slot[data[2] - 1].flags = 0;
   break;
  case 1:
   av7110->ci_slot[data[2] - 1].flags |= CA_CI_MODULE_PRESENT;
   break;
  case 2:
   av7110->ci_slot[data[2] - 1].flags |= CA_CI_MODULE_READY;
   break;
  }
  break;
 case 128:

  break;
 default:
  break;
 }
}
