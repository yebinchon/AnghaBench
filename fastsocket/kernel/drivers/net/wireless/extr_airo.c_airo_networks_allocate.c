
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {scalar_t__ networks; } ;
typedef int BSSListElement ;


 int AIRO_MAX_NETWORK_COUNT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int airo_print_warn (char*,char*) ;
 scalar_t__ kzalloc (int,int ) ;

__attribute__((used)) static int airo_networks_allocate(struct airo_info *ai)
{
 if (ai->networks)
  return 0;

 ai->networks =
     kzalloc(AIRO_MAX_NETWORK_COUNT * sizeof(BSSListElement),
      GFP_KERNEL);
 if (!ai->networks) {
  airo_print_warn("", "Out of memory allocating beacons");
  return -ENOMEM;
 }

 return 0;
}
