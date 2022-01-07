
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int args ;


 unsigned long LHREQ_INITIALIZE ;
 int O_RDWR ;
 int err (int,char*) ;
 unsigned long getpagesize () ;
 unsigned long guest_base ;
 unsigned long guest_limit ;
 int lguest_fd ;
 int open_or_die (char*,int ) ;
 int verbose (char*,unsigned long,unsigned long,unsigned long) ;
 scalar_t__ write (int ,unsigned long*,int) ;

__attribute__((used)) static void tell_kernel(unsigned long start)
{
 unsigned long args[] = { LHREQ_INITIALIZE,
     (unsigned long)guest_base,
     guest_limit / getpagesize(), start };
 verbose("Guest: %p - %p (%#lx)\n",
  guest_base, guest_base + guest_limit, guest_limit);
 lguest_fd = open_or_die("/dev/lguest", O_RDWR);
 if (write(lguest_fd, args, sizeof(args)) < 0)
  err(1, "Writing to /dev/lguest");
}
