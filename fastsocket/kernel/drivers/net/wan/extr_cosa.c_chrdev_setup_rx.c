
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_data {int rxsize; char* rxdata; } ;



__attribute__((used)) static char *chrdev_setup_rx(struct channel_data *chan, int size)
{

 chan->rxsize = size;
 return chan->rxdata;
}
