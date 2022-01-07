
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dvb_pll_priv {struct dvb_pll_desc* pll_desc; } ;
struct dvb_pll_desc {scalar_t__ min; scalar_t__ max; int count; int iffreq; TYPE_1__* entries; int name; int (* set ) (struct dvb_frontend*,int*,struct dvb_frontend_parameters const*) ;} ;
struct dvb_frontend_parameters {scalar_t__ frequency; } ;
struct dvb_frontend {struct dvb_pll_priv* tuner_priv; } ;
struct TYPE_2__ {scalar_t__ limit; int stepsize; int config; int cb; } ;


 int EINVAL ;
 scalar_t__ debug ;
 int printk (char*,int ,int,int,int,...) ;
 int stub1 (struct dvb_frontend*,int*,struct dvb_frontend_parameters const*) ;

__attribute__((used)) static int dvb_pll_configure(struct dvb_frontend *fe, u8 *buf,
        const struct dvb_frontend_parameters *params)
{
 struct dvb_pll_priv *priv = fe->tuner_priv;
 struct dvb_pll_desc *desc = priv->pll_desc;
 u32 div;
 int i;

 if (params->frequency != 0 && (params->frequency < desc->min ||
           params->frequency > desc->max))
  return -EINVAL;

 for (i = 0; i < desc->count; i++) {
  if (params->frequency > desc->entries[i].limit)
   continue;
  break;
 }

 if (debug)
  printk("pll: %s: freq=%d | i=%d/%d\n", desc->name,
         params->frequency, i, desc->count);
 if (i == desc->count)
  return -EINVAL;

 div = (params->frequency + desc->iffreq +
        desc->entries[i].stepsize/2) / desc->entries[i].stepsize;
 buf[0] = div >> 8;
 buf[1] = div & 0xff;
 buf[2] = desc->entries[i].config;
 buf[3] = desc->entries[i].cb;

 if (desc->set)
  desc->set(fe, buf, params);

 if (debug)
  printk("pll: %s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\n",
         desc->name, div, buf[0], buf[1], buf[2], buf[3]);


 return (div * desc->entries[i].stepsize) - desc->iffreq;
}
