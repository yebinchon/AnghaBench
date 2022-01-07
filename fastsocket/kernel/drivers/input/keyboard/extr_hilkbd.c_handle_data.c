
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* data; int ptr; scalar_t__ curdev; } ;


 TYPE_1__ hil_dev ;

__attribute__((used)) static inline void handle_data(unsigned char s, unsigned char c)
{
 if (hil_dev.curdev) {
  hil_dev.data[hil_dev.ptr++] = c;
  hil_dev.ptr &= 15;
 }
}
