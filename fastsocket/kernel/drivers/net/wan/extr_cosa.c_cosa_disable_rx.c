
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int rxbitmap; } ;
struct channel_data {int num; struct cosa_data* cosa; } ;


 int put_driver_status (struct cosa_data*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void cosa_disable_rx(struct channel_data *chan)
{
 struct cosa_data *cosa = chan->cosa;

 if (test_and_clear_bit(chan->num, &cosa->rxbitmap))
  put_driver_status(cosa);
}
