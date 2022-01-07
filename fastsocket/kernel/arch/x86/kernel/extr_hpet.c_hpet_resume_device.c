
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int force_hpet_resume () ;

__attribute__((used)) static void hpet_resume_device(void)
{
 force_hpet_resume();
}
