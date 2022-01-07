
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct z8530_channel {int ctrlio; } ;


 scalar_t__ z8530_read_port (int ) ;
 int z8530_write_port (int ,scalar_t__) ;

__attribute__((used)) static inline u8 read_zsreg(struct z8530_channel *c, u8 reg)
{
 if(reg)
  z8530_write_port(c->ctrlio, reg);
 return z8530_read_port(c->ctrlio);
}
