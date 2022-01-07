
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int crc_val; } ;
struct TYPE_4__ {TYPE_1__ sec; } ;
struct dvb_demux_feed {TYPE_2__ feed; } ;


 int crc32_be (int ,int const*,size_t) ;

__attribute__((used)) static u32 dvb_dmx_crc32(struct dvb_demux_feed *f, const u8 *src, size_t len)
{
 return (f->feed.sec.crc_val = crc32_be(f->feed.sec.crc_val, src, len));
}
