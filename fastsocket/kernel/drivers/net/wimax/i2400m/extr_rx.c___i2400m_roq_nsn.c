
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_roq {scalar_t__ ws; } ;



__attribute__((used)) static
unsigned __i2400m_roq_nsn(struct i2400m_roq *roq, unsigned sn)
{
 int r;
 r = ((int) sn - (int) roq->ws) % 2048;
 if (r < 0)
  r += 2048;
 return r;
}
