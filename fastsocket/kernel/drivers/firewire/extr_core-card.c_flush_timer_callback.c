
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int dummy; } ;


 int fw_flush_transactions (struct fw_card*) ;

__attribute__((used)) static void flush_timer_callback(unsigned long data)
{
 struct fw_card *card = (struct fw_card *)data;

 fw_flush_transactions(card);
}
