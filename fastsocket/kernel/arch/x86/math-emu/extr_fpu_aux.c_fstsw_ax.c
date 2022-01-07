
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_EAX ;
 int no_ip_update ;
 short status_word () ;

__attribute__((used)) static void fstsw_ax(void)
{
 *(short *)&FPU_EAX = status_word();
 no_ip_update = 1;
}
