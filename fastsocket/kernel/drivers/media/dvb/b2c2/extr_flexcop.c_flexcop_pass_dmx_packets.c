
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct flexcop_device {int demux; } ;


 int dvb_dmx_swfilter_packets (int *,int *,int ) ;

void flexcop_pass_dmx_packets(struct flexcop_device *fc, u8 *buf, u32 no)
{
 dvb_dmx_swfilter_packets(&fc->demux, buf, no);
}
