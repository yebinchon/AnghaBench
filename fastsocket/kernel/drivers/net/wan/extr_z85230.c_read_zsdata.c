
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {int dataio; } ;


 int z8530_read_port (int ) ;

__attribute__((used)) static inline u8 read_zsdata(struct z8530_channel *c)
{
 u8 r;
 r=z8530_read_port(c->dataio);
 return r;
}
