
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct velocity_info {int ip_addr; TYPE_1__* dev; } ;
struct in_ifaddr {int ifa_address; } ;
struct in_device {scalar_t__ ifa_list; } ;
struct TYPE_2__ {scalar_t__ ip_ptr; } ;


 int ENOENT ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static inline int velocity_get_ip(struct velocity_info *vptr)
{
 struct in_device *in_dev = (struct in_device *) vptr->dev->ip_ptr;
 struct in_ifaddr *ifa;

 if (in_dev != ((void*)0)) {
  ifa = (struct in_ifaddr *) in_dev->ifa_list;
  if (ifa != ((void*)0)) {
   memcpy(vptr->ip_addr, &ifa->ifa_address, 4);
   return 0;
  }
 }
 return -ENOENT;
}
