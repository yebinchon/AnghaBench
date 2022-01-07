
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_demux_feed {int dummy; } ;


 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static void dvb_dmx_memcopy(struct dvb_demux_feed *f, u8 *d, const u8 *s,
       size_t len)
{
 memcpy(d, s, len);
}
