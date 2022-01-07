
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct save_area_s390x {int ctrl_regs; } ;


 int KEXEC_CORE_NOTE_NAME ;
 int NT_S390_CTRS ;
 void* nt_init (void*,int ,int *,int,int ) ;

__attribute__((used)) static void *nt_s390_ctrs(void *ptr, struct save_area_s390x *sa)
{
 return nt_init(ptr, NT_S390_CTRS, &sa->ctrl_regs,
         sizeof(sa->ctrl_regs), KEXEC_CORE_NOTE_NAME);
}
