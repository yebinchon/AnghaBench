
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int ehca_debug_level ;

__attribute__((used)) static ssize_t ehca_store_debug_level(struct device_driver *ddp,
          const char *buf, size_t count)
{
 int value = (*buf) - '0';
 if (value >= 0 && value <= 9)
  ehca_debug_level = value;
 return 1;
}
