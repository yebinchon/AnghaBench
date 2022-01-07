
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_spi_card {int spi_thread_terminated; int spi_ready; scalar_t__ run_thread; } ;


 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static void if_spi_terminate_spi_thread(struct if_spi_card *card)
{


 card->run_thread = 0;
 up(&card->spi_ready);
 down(&card->spi_thread_terminated);
}
