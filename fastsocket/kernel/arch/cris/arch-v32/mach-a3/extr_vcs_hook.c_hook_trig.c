
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOOK_TRIG (unsigned int) ;
 unsigned int VHOOK_DATA (int) ;
 unsigned int* hook_base ;

__attribute__((used)) static unsigned hook_trig(unsigned id)
{
 unsigned ret;





 ret = *hook_base;


 HOOK_TRIG(id);


 while (VHOOK_DATA(0) > 0) ;



 ret = VHOOK_DATA(1);

 return ret;
}
