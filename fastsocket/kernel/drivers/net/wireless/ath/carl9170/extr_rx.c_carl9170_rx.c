
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rx_stream; } ;
struct ar9170 {TYPE_1__ fw; } ;


 int __carl9170_rx (struct ar9170*,void*,unsigned int) ;
 int carl9170_rx_stream (struct ar9170*,void*,unsigned int) ;

void carl9170_rx(struct ar9170 *ar, void *buf, unsigned int len)
{
 if (ar->fw.rx_stream)
  carl9170_rx_stream(ar, buf, len);
 else
  __carl9170_rx(ar, buf, len);
}
