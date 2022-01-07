
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char channel; int ssid_len; int* ssid; } ;
struct TYPE_8__ {TYPE_3__ ap; } ;
struct sta_info {int flags; int* supported_rates; int last_rx_rate; TYPE_4__ u; scalar_t__ ap; TYPE_2__* crypt; int * rx_count; int * tx_count; int tx_rate; int last_rx_signal; int last_rx_silence; int tx_buf; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; int last_tx; int last_rx; int last_assoc; int last_auth; int listen_interval; int capability; int aid; int users; int addr; } ;
struct seq_file {struct sta_info* private; } ;
struct TYPE_6__ {int priv; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* print_stats ) (struct seq_file*,int ) ;} ;


 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTH ;
 int WLAN_STA_AUTHORIZED ;
 int WLAN_STA_PENDING_POLL ;
 int WLAN_STA_PERM ;
 int WLAN_STA_PS ;
 int WLAN_STA_TIM ;
 int atomic_read (int *) ;
 int jiffies ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int skb_queue_len (int *) ;
 int stub1 (struct seq_file*,int ) ;

__attribute__((used)) static int prism2_sta_proc_show(struct seq_file *m, void *v)
{
 struct sta_info *sta = m->private;
 int i;





 seq_printf(m,
     "%s=%pM\nusers=%d\naid=%d\n"
     "flags=0x%04x%s%s%s%s%s%s%s\n"
     "capability=0x%02x\nlisten_interval=%d\nsupported_rates=",
     sta->ap ? "AP" : "STA",
     sta->addr, atomic_read(&sta->users), sta->aid,
     sta->flags,
     sta->flags & WLAN_STA_AUTH ? " AUTH" : "",
     sta->flags & WLAN_STA_ASSOC ? " ASSOC" : "",
     sta->flags & WLAN_STA_PS ? " PS" : "",
     sta->flags & WLAN_STA_TIM ? " TIM" : "",
     sta->flags & WLAN_STA_PERM ? " PERM" : "",
     sta->flags & WLAN_STA_AUTHORIZED ? " AUTHORIZED" : "",
     sta->flags & WLAN_STA_PENDING_POLL ? " POLL" : "",
     sta->capability, sta->listen_interval);

 for (i = 0; i < sizeof(sta->supported_rates); i++)
  if (sta->supported_rates[i] != 0)
   seq_printf(m, "%d%sMbps ",
       (sta->supported_rates[i] & 0x7f) / 2,
       sta->supported_rates[i] & 1 ? ".5" : "");
 seq_printf(m,
     "\njiffies=%lu\nlast_auth=%lu\nlast_assoc=%lu\n"
     "last_rx=%lu\nlast_tx=%lu\nrx_packets=%lu\n"
     "tx_packets=%lu\n"
     "rx_bytes=%lu\ntx_bytes=%lu\nbuffer_count=%d\n"
     "last_rx: silence=%d dBm signal=%d dBm rate=%d%s Mbps\n"
     "tx_rate=%d\ntx[1M]=%d\ntx[2M]=%d\ntx[5.5M]=%d\n"
     "tx[11M]=%d\n"
     "rx[1M]=%d\nrx[2M]=%d\nrx[5.5M]=%d\nrx[11M]=%d\n",
     jiffies, sta->last_auth, sta->last_assoc, sta->last_rx,
     sta->last_tx,
     sta->rx_packets, sta->tx_packets, sta->rx_bytes,
     sta->tx_bytes, skb_queue_len(&sta->tx_buf),
     sta->last_rx_silence,
     sta->last_rx_signal, sta->last_rx_rate / 10,
     sta->last_rx_rate % 10 ? ".5" : "",
     sta->tx_rate, sta->tx_count[0], sta->tx_count[1],
     sta->tx_count[2], sta->tx_count[3], sta->rx_count[0],
     sta->rx_count[1], sta->rx_count[2], sta->rx_count[3]);
 if (sta->crypt && sta->crypt->ops && sta->crypt->ops->print_stats)
  sta->crypt->ops->print_stats(m, sta->crypt->priv);

 if (sta->ap) {
  if (sta->u.ap.channel >= 0)
   seq_printf(m, "channel=%d\n", sta->u.ap.channel);
  seq_puts(m, "ssid=");
  for (i = 0; i < sta->u.ap.ssid_len; i++) {
   if (sta->u.ap.ssid[i] >= 32 && sta->u.ap.ssid[i] < 127)
    seq_putc(m, sta->u.ap.ssid[i]);
   else
    seq_printf(m, "<%02x>", sta->u.ap.ssid[i]);
  }
  seq_putc(m, '\n');
 }


 return 0;
}
