
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slave; int sub; int data; } ;


 int i2c_count ;
 TYPE_1__* i2cinfo ;

__attribute__((used)) static int pms_i2c_read(int slave, int sub)
{
 int i=0;
 for(i=0;i<i2c_count;i++)
 {
  if(i2cinfo[i].slave==slave && i2cinfo[i].sub==sub)
   return i2cinfo[i].data;
 }
 return 0;
}
