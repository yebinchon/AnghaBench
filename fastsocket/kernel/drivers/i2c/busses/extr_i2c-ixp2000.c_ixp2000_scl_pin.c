
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp2000_i2c_pins {int scl_pin; } ;



__attribute__((used)) static inline int ixp2000_scl_pin(void *data)
{
 return ((struct ixp2000_i2c_pins*)data)->scl_pin;
}
