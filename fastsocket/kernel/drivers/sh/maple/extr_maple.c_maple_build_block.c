
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mapleq {unsigned long* sendbuf; int length; int command; TYPE_2__* recvbuf; TYPE_1__* dev; } ;
struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {int port; int unit; } ;


 int PHYSADDR (int ) ;
 int* maple_lastptr ;
 int* maple_sendptr ;

__attribute__((used)) static void maple_build_block(struct mapleq *mq)
{
 int port, unit, from, to, len;
 unsigned long *lsendbuf = mq->sendbuf;

 port = mq->dev->port & 3;
 unit = mq->dev->unit;
 len = mq->length;
 from = port << 6;
 to = (port << 6) | (unit > 0 ? (1 << (unit - 1)) & 0x1f : 0x20);

 *maple_lastptr &= 0x7fffffff;
 maple_lastptr = maple_sendptr;

 *maple_sendptr++ = (port << 16) | len | 0x80000000;
 *maple_sendptr++ = PHYSADDR(mq->recvbuf->buf);
 *maple_sendptr++ =
     mq->command | (to << 8) | (from << 16) | (len << 24);
 while (len-- > 0)
  *maple_sendptr++ = *lsendbuf++;
}
