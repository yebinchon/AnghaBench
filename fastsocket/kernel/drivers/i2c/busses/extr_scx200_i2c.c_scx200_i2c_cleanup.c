
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_del_adapter (int *) ;
 int scx200_i2c_ops ;

__attribute__((used)) static void scx200_i2c_cleanup(void)
{
 i2c_del_adapter(&scx200_i2c_ops);
}
