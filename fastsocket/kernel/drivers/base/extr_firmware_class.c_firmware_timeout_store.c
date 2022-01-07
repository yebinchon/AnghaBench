
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ loading_timeout ;
 scalar_t__ simple_strtol (char const*,int *,int) ;

__attribute__((used)) static ssize_t
firmware_timeout_store(struct class *class, const char *buf, size_t count)
{
 loading_timeout = simple_strtol(buf, ((void*)0), 10);
 if (loading_timeout < 0)
  loading_timeout = 0;
 return count;
}
