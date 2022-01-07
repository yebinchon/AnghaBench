
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curdev; scalar_t__ ptr; } ;


 TYPE_1__ hil_dev ;
 int poll_finished () ;

__attribute__((used)) static inline void handle_status(unsigned char s, unsigned char c)
{
 if (c & 0x8) {

  if (c & 0x10)
   poll_finished();
 } else {
  if (c & 0x10) {
   if (hil_dev.curdev)
    poll_finished();
   hil_dev.curdev = c & 7;
   hil_dev.ptr = 0;
  }
 }
}
