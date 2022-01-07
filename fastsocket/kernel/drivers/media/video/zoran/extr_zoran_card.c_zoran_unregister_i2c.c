
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran {int i2c_adapter; } ;


 int i2c_del_adapter (int *) ;

__attribute__((used)) static void
zoran_unregister_i2c (struct zoran *zr)
{
 i2c_del_adapter(&zr->i2c_adapter);
}
