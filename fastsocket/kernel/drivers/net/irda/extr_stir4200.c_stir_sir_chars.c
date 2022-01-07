
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stir_cb {int rx_buff; TYPE_1__* netdev; } ;
typedef int __u8 ;
struct TYPE_2__ {int stats; } ;


 int async_unwrap_char (TYPE_1__*,int *,int *,int const) ;

__attribute__((used)) static void stir_sir_chars(struct stir_cb *stir,
       const __u8 *bytes, int len)
{
 int i;

 for (i = 0; i < len; i++)
  async_unwrap_char(stir->netdev, &stir->netdev->stats,
      &stir->rx_buff, bytes[i]);
}
