
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int machine_flags; } ;
struct TYPE_6__ {TYPE_1__* vm; int count; } ;
struct TYPE_5__ {int cpi; } ;


 int ENOSYS ;
 int MACHINE_FLAG_KVM ;
 int MACHINE_FLAG_VM ;
 TYPE_4__ S390_lowcore ;
 int memcmp (int ,char*,int) ;
 int stsi (TYPE_2__*,int,int,int) ;
 TYPE_2__ vmms ;

void detect_machine_type(void)
{

 if (stsi(&vmms, 3, 2, 2) == -ENOSYS)
  return;
 if (!vmms.count)
  return;


 if (!memcmp(vmms.vm[0].cpi, "\xd2\xe5\xd4", 3))
  S390_lowcore.machine_flags |= MACHINE_FLAG_KVM;
 else
  S390_lowcore.machine_flags |= MACHINE_FLAG_VM;
}
