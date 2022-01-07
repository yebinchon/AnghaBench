
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_info {int dummy; } ;


 int ENOSYS ;
 int stsi (struct tl_info*,int,int,int) ;

__attribute__((used)) static void store_topology(struct tl_info *info)
{







 stsi(info, 15, 1, 2);
}
