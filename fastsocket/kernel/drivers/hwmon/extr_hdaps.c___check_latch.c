
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 int EINVAL ;
 scalar_t__ __get_latch (int ) ;

__attribute__((used)) static inline int __check_latch(u16 port, u8 val)
{
 if (__get_latch(port) == val)
  return 0;
 return -EINVAL;
}
