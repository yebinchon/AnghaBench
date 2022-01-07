
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 void* from_guest_phys (scalar_t__) ;
 unsigned int getpagesize () ;
 scalar_t__ guest_limit ;
 scalar_t__ guest_max ;

__attribute__((used)) static void *get_pages(unsigned int num)
{
 void *addr = from_guest_phys(guest_limit);

 guest_limit += num * getpagesize();
 if (guest_limit > guest_max)
  errx(1, "Not enough memory for devices");
 return addr;
}
