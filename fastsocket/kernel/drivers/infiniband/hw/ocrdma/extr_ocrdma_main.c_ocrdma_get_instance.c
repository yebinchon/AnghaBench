
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 scalar_t__ idr_get_new (int *,int *,int*) ;
 int idr_pre_get (int *,int ) ;
 int ocrdma_dev_id ;

__attribute__((used)) static int ocrdma_get_instance(void)
{
 int instance = 0;


 if (!idr_pre_get(&ocrdma_dev_id, GFP_KERNEL))
  return -1;
 if (idr_get_new(&ocrdma_dev_id, ((void*)0), &instance))
  return -1;
 return instance;
}
