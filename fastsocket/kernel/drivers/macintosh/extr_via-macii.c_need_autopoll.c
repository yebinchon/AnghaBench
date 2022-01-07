
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autopoll_devs ;
 int command_byte ;

__attribute__((used)) static inline int need_autopoll(void) {



 if ((command_byte & 0x0F) == 0x0C &&
     ((1 << ((command_byte & 0xF0) >> 4)) & autopoll_devs))
  return 0;
 return 1;
}
