
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {TYPE_1__* attr; } ;
struct TYPE_2__ {scalar_t__ brcd_serialnum; } ;


 int BFA_ADAPTER_SERIAL_NUM_LEN ;
 int memcpy (char*,void*,int ) ;

__attribute__((used)) static void
bfa_ioc_get_adapter_serial_num(struct bfa_ioc *ioc, char *serial_num)
{
 memcpy(serial_num,
   (void *)ioc->attr->brcd_serialnum,
   BFA_ADAPTER_SERIAL_NUM_LEN);
}
