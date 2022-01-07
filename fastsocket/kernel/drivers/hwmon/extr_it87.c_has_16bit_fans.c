
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {scalar_t__ type; int revision; } ;


 scalar_t__ it87 ;
 scalar_t__ it8712 ;
 scalar_t__ it8716 ;
 scalar_t__ it8718 ;
 scalar_t__ it8720 ;

__attribute__((used)) static inline int has_16bit_fans(const struct it87_data *data)
{



 return (data->type == it87 && data->revision >= 0x03)
     || (data->type == it8712 && data->revision >= 0x08)
     || data->type == it8716
     || data->type == it8718
     || data->type == it8720;
}
