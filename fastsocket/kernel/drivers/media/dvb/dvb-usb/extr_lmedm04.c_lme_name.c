
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lme2510_state {size_t tuner_config; } ;
struct dvb_usb_adapter {TYPE_5__* fe; TYPE_2__* dev; } ;
struct TYPE_8__ {char* name; } ;
struct TYPE_9__ {TYPE_3__ info; } ;
struct TYPE_10__ {TYPE_4__ ops; } ;
struct TYPE_7__ {TYPE_1__* desc; struct lme2510_state* priv; } ;
struct TYPE_6__ {char* name; } ;


 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int lme_name(struct dvb_usb_adapter *adap)
{
 struct lme2510_state *st = adap->dev->priv;
 const char *desc = adap->dev->desc->name;
 char *fe_name[] = {"", " LG TDQY-P001F", " SHARP:BS2F7HZ7395"};
 char *name = adap->fe->ops.info.name;

 strlcpy(name, desc, 128);
 strlcat(name, fe_name[st->tuner_config], 128);

 return 0;
}
