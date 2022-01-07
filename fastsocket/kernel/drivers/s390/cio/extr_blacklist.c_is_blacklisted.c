
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bl_dev ;
 int test_bit (int,int ) ;

int
is_blacklisted (int ssid, int devno)
{
 return test_bit (devno, bl_dev[ssid]);
}
