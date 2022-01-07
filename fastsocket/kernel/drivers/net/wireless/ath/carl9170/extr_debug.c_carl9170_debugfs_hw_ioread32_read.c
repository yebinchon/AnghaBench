
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t ring_head; size_t ring_tail; TYPE_1__* ring; } ;
struct ar9170 {TYPE_2__ debug; } ;
typedef int ssize_t ;
struct TYPE_3__ {int value; int reg; } ;


 int ADD (char*,int ,size_t,char*,int ,int ) ;
 size_t CARL9170_DEBUG_RING_SIZE ;

__attribute__((used)) static char *carl9170_debugfs_hw_ioread32_read(struct ar9170 *ar, char *buf,
            size_t bufsize, ssize_t *ret)
{
 int i = 0;

 while (ar->debug.ring_head != ar->debug.ring_tail) {
  ADD(buf, *ret, bufsize, "%.8x = %.8x\n",
      ar->debug.ring[ar->debug.ring_head].reg,
      ar->debug.ring[ar->debug.ring_head].value);

  ar->debug.ring_head++;
  ar->debug.ring_head %= CARL9170_DEBUG_RING_SIZE;

  if (i++ == 64)
   break;
 }
 ar->debug.ring_head = ar->debug.ring_tail;
 return buf;
}
