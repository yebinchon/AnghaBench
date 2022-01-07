
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mspro_block_data {int active; } ;
struct memstick_dev {int dummy; } ;


 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;

__attribute__((used)) static int mspro_block_check_card(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);

 return (msb->active == 1);
}
