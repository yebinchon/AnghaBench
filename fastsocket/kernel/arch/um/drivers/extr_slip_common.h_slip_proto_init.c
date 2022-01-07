
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip_proto {scalar_t__ esc; scalar_t__ pos; scalar_t__ more; int obuf; int ibuf; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static inline void slip_proto_init(struct slip_proto * slip)
{
 memset(slip->ibuf, 0, sizeof(slip->ibuf));
 memset(slip->obuf, 0, sizeof(slip->obuf));
 slip->more = 0;
 slip->pos = 0;
 slip->esc = 0;
}
