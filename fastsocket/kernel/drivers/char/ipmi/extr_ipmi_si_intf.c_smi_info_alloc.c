
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int si_lock; } ;


 int GFP_KERNEL ;
 struct smi_info* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct smi_info *smi_info_alloc(void)
{
 struct smi_info *info = kzalloc(sizeof(*info), GFP_KERNEL);

 if (info)
  spin_lock_init(&info->si_lock);
 return info;
}
