
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath_hw {int dummy; } ;


 int AR_DATABUF_SIZE ;
 int AR_DATABUF_SIZE_MASK ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

void ath9k_hw_set_rx_bufsize(struct ath_hw *ah, u16 buf_size)
{
 REG_WRITE(ah, AR_DATABUF_SIZE, buf_size & AR_DATABUF_SIZE_MASK);
}
