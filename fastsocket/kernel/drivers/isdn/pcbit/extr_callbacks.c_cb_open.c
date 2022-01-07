
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcbit_dev {TYPE_1__* dev_if; int id; } ;
struct pcbit_chan {int id; } ;
struct callb_data {int dummy; } ;
struct TYPE_5__ {int arg; int driver; int command; } ;
typedef TYPE_2__ isdn_ctrl ;
struct TYPE_4__ {int (* statcallb ) (TYPE_2__*) ;} ;


 int ISDN_STAT_BCONN ;
 int stub1 (TYPE_2__*) ;

void cb_open(struct pcbit_dev * dev, struct pcbit_chan* chan,
      struct callb_data *data)
{
        isdn_ctrl ictl;

        ictl.command = ISDN_STAT_BCONN;
        ictl.driver=dev->id;
        ictl.arg=chan->id;
        dev->dev_if->statcallb(&ictl);
}
