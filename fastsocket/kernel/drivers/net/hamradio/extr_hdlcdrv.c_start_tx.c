
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int ptt; scalar_t__ numbits; scalar_t__ bitstream; scalar_t__ bitbuf; int numflags; scalar_t__ tx_state; } ;
struct TYPE_3__ {int tx_delay; } ;
struct hdlcdrv_state {int ptt_keyed; TYPE_2__ hdlctx; TYPE_1__ ch_params; } ;


 int hdlcdrv_transmitter (struct net_device*,struct hdlcdrv_state*) ;
 int tenms_to_2flags (struct hdlcdrv_state*,int ) ;

__attribute__((used)) static void start_tx(struct net_device *dev, struct hdlcdrv_state *s)
{
 s->hdlctx.tx_state = 0;
 s->hdlctx.numflags = tenms_to_2flags(s, s->ch_params.tx_delay);
 s->hdlctx.bitbuf = s->hdlctx.bitstream = s->hdlctx.numbits = 0;
 hdlcdrv_transmitter(dev, s);
 s->hdlctx.ptt = 1;
 s->ptt_keyed++;
}
