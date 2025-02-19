
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct m920x_state {int* filtering_enabled; int** filters; } ;
struct TYPE_4__ {int endpoint; } ;
struct TYPE_5__ {TYPE_1__ stream; } ;
struct dvb_usb_adapter {size_t id; TYPE_3__* dev; TYPE_2__ props; } ;
struct TYPE_6__ {struct m920x_state* priv; } ;


 int M9206_MAX_FILTERS ;
 int m920x_set_filter (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int m920x_update_filters(struct dvb_usb_adapter *adap)
{
 struct m920x_state *m = adap->dev->priv;
 int enabled = m->filtering_enabled[adap->id];
 int i, ret = 0, filter = 0;
 int ep = adap->props.stream.endpoint;

 for (i = 0; i < M9206_MAX_FILTERS; i++)
  if (m->filters[adap->id][i] == 8192)
   enabled = 0;


 if ((ret = m920x_set_filter(adap->dev, ep, 1, enabled)) != 0)
  return ret;

 for (i = 0; i < M9206_MAX_FILTERS; i++)
  if ((ret = m920x_set_filter(adap->dev, ep, i + 2, 0)) != 0)
   return ret;


 if (enabled) {
  for (i = 0; i < M9206_MAX_FILTERS; i++) {
   if (m->filters[adap->id][i] == 0)
    continue;

   if ((ret = m920x_set_filter(adap->dev, ep, filter + 2, m->filters[adap->id][i])) != 0)
    return ret;

   filter++;
  }
 }

 return ret;
}
