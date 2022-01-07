
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct save_area_s390x {int timer; } ;


 int KEXEC_CORE_NOTE_NAME ;
 int NT_S390_TIMER ;
 void* nt_init (void*,int ,int *,int,int ) ;

__attribute__((used)) static void *nt_s390_timer(void *ptr, struct save_area_s390x *sa)
{
 return nt_init(ptr, NT_S390_TIMER, &sa->timer, sizeof(sa->timer),
    KEXEC_CORE_NOTE_NAME);
}
