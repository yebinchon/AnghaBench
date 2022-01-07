
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_spi_card {int prev_xfer_time; } ;


 int jiffies ;

__attribute__((used)) static void spu_transaction_finish(struct if_spi_card *card)
{
 card->prev_xfer_time = jiffies;
}
