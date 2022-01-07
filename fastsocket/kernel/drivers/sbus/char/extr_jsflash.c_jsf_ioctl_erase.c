
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int jsf_inl (unsigned long) ;
 int jsf_outl (unsigned long,int) ;
 int jsf_wait (unsigned long) ;
 int printk (char*,int) ;

__attribute__((used)) static int jsf_ioctl_erase(unsigned long arg)
{
 unsigned long p;


 p = 0x20400000;

 jsf_outl(p, 0xAAAAAAAA);
 jsf_outl(p, 0x55555555);
 jsf_outl(p, 0x80808080);
 jsf_outl(p, 0xAAAAAAAA);
 jsf_outl(p, 0x55555555);
 jsf_outl(p, 0x10101010);
 jsf_wait(p);


 return 0;
}
