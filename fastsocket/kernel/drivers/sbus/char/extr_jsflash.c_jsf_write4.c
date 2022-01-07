
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jsf_outl (unsigned long,int) ;
 int jsf_wait (unsigned long) ;

__attribute__((used)) static void jsf_write4(unsigned long fa, u32 data) {

 jsf_outl(fa, 0xAAAAAAAA);
 jsf_outl(fa, 0x55555555);
 jsf_outl(fa, 0xA0A0A0A0);
 jsf_outl(fa, data);

 jsf_wait(fa);
}
