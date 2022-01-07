
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _get_mdevice_count ;
 int class_for_each_device (int *,int *,int*,int ) ;
 int mISDN_class ;

int
get_mdevice_count(void)
{
 int cnt = 0;

 class_for_each_device(&mISDN_class, ((void*)0), &cnt, _get_mdevice_count);
 return cnt;
}
