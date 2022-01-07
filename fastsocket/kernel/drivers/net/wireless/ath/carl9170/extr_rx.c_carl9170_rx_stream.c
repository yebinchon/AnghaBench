
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ar9170_stream {scalar_t__ tag; int * payload; int length; } ;
struct ar9170 {unsigned int rx_failover_missing; TYPE_2__* rx_failover; TYPE_1__* hw; } ;
struct TYPE_6__ {void* data; unsigned int len; } ;
struct TYPE_5__ {int wiphy; } ;


 unsigned int ALIGN (unsigned int,int) ;
 int AR9170_RX_STREAM_TAG ;
 int DUMP_PREFIX_OFFSET ;
 int __carl9170_rx (struct ar9170*,int *,unsigned int) ;
 scalar_t__ cpu_to_le16 (int ) ;
 unsigned int le16_to_cpu (int ) ;
 int memcpy (int ,int *,unsigned int) ;
 scalar_t__ net_ratelimit () ;
 int print_hex_dump_bytes (char*,int ,void*,unsigned int) ;
 int skb_put (TYPE_2__*,unsigned int) ;
 int skb_reset_tail_pointer (TYPE_2__*) ;
 int skb_trim (TYPE_2__*,int ) ;
 int wiphy_err (int ,char*,...) ;

__attribute__((used)) static void carl9170_rx_stream(struct ar9170 *ar, void *buf, unsigned int len)
{
 unsigned int tlen, wlen = 0, clen = 0;
 struct ar9170_stream *rx_stream;
 u8 *tbuf;

 tbuf = buf;
 tlen = len;

 while (tlen >= 4) {
  rx_stream = (void *) tbuf;
  clen = le16_to_cpu(rx_stream->length);
  wlen = ALIGN(clen, 4);


  if (rx_stream->tag != cpu_to_le16(AR9170_RX_STREAM_TAG)) {






   if (!ar->rx_failover_missing) {


    if (net_ratelimit()) {
     wiphy_err(ar->hw->wiphy,
      "missing tag!\n");
    }

    __carl9170_rx(ar, tbuf, tlen);
    return;
   }

   if (ar->rx_failover_missing > tlen) {
    if (net_ratelimit()) {
     wiphy_err(ar->hw->wiphy,
      "possible multi "
      "stream corruption!\n");
     goto err_telluser;
    } else {
     goto err_silent;
    }
   }

   memcpy(skb_put(ar->rx_failover, tlen), tbuf, tlen);
   ar->rx_failover_missing -= tlen;

   if (ar->rx_failover_missing <= 0) {
    ar->rx_failover_missing = 0;
    carl9170_rx_stream(ar, ar->rx_failover->data,
         ar->rx_failover->len);

    skb_reset_tail_pointer(ar->rx_failover);
    skb_trim(ar->rx_failover, 0);
   }

   return;
  }


  if (wlen > tlen - 4) {
   if (ar->rx_failover_missing) {

    if (net_ratelimit()) {
     wiphy_err(ar->hw->wiphy, "double rx "
      "stream corruption!\n");
     goto err_telluser;
    } else {
     goto err_silent;
    }
   }







   memcpy(skb_put(ar->rx_failover, tlen), tbuf, tlen);
   ar->rx_failover_missing = clen - tlen;
   return;
  }
  __carl9170_rx(ar, rx_stream->payload, clen);

  tbuf += wlen + 4;
  tlen -= wlen + 4;
 }

 if (tlen) {
  if (net_ratelimit()) {
   wiphy_err(ar->hw->wiphy, "%d bytes of unprocessed "
    "data left in rx stream!\n", tlen);
  }

  goto err_telluser;
 }

 return;

err_telluser:
 wiphy_err(ar->hw->wiphy, "damaged RX stream data [want:%d, "
  "data:%d, rx:%d, pending:%d ]\n", clen, wlen, tlen,
  ar->rx_failover_missing);

 if (ar->rx_failover_missing)
  print_hex_dump_bytes("rxbuf:", DUMP_PREFIX_OFFSET,
         ar->rx_failover->data,
         ar->rx_failover->len);

 print_hex_dump_bytes("stream:", DUMP_PREFIX_OFFSET,
        buf, len);

 wiphy_err(ar->hw->wiphy, "please check your hardware and cables, if "
  "you see this message frequently.\n");

err_silent:
 if (ar->rx_failover_missing) {
  skb_reset_tail_pointer(ar->rx_failover);
  skb_trim(ar->rx_failover, 0);
  ar->rx_failover_missing = 0;
 }
}
