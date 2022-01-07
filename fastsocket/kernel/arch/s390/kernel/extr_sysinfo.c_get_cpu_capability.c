
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo_1_2_2 {unsigned int capability; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int stsi (struct sysinfo_1_2_2*,int,int,int) ;

int get_cpu_capability(unsigned int *capability)
{
 struct sysinfo_1_2_2 *info;
 int rc;

 info = (void *) get_zeroed_page(GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 rc = stsi(info, 1, 2, 2);
 if (rc == -ENOSYS)
  goto out;
 rc = 0;
 *capability = info->capability;
out:
 free_page((unsigned long) info);
 return rc;
}
