
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lineop {int val; int port; scalar_t__ inverted; } ;


 int port_read (int ) ;
 int port_write (int ,int) ;

__attribute__((used)) static inline void line_set(int state, const struct lineop *op)
{
 u8 oldval = port_read(op->port);


 if ((op->inverted && !state) || (!op->inverted && state))
  port_write(op->port, oldval | op->val);
 else
  port_write(op->port, oldval & ~op->val);
}
