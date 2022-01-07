
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int clean_wq ;
 int create_singlethread_workqueue (char*) ;

int mlx4_ib_mcg_init(void)
{
 clean_wq = create_singlethread_workqueue("mlx4_ib_mcg");
 if (!clean_wq)
  return -ENOMEM;

 return 0;
}
