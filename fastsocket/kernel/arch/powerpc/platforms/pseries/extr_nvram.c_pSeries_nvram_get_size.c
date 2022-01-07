
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ ENODEV ;
 scalar_t__ nvram_size ;

__attribute__((used)) static ssize_t pSeries_nvram_get_size(void)
{
 return nvram_size ? nvram_size : -ENODEV;
}
