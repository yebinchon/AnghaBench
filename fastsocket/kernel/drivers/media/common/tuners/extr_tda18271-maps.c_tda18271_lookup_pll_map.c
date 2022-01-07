
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tda18271_priv {TYPE_1__* maps; } ;
struct tda18271_pll_map {int lomax; int d; int pd; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
typedef enum tda18271_map_type { ____Placeholder_tda18271_map_type } tda18271_map_type ;
struct TYPE_2__ {struct tda18271_pll_map* cal_pll; struct tda18271_pll_map* main_pll; } ;


 int BUG_ON (int) ;

 int EINVAL ;
 int ERANGE ;

 int tda_map (char*,...) ;
 int tda_warn (char*,char*) ;

int tda18271_lookup_pll_map(struct dvb_frontend *fe,
       enum tda18271_map_type map_type,
       u32 *freq, u8 *post_div, u8 *div)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 struct tda18271_pll_map *map = ((void*)0);
 unsigned int i = 0;
 char *map_name;
 int ret = 0;

 BUG_ON(!priv->maps);

 switch (map_type) {
 case 128:
  map = priv->maps->main_pll;
  map_name = "main_pll";
  break;
 case 129:
  map = priv->maps->cal_pll;
  map_name = "cal_pll";
  break;
 default:

  map_name = "undefined";
  break;
 }

 if (!map) {
  tda_warn("%s map is not set!\n", map_name);
  ret = -EINVAL;
  goto fail;
 }

 while ((map[i].lomax * 1000) < *freq) {
  if (map[i + 1].lomax == 0) {
   tda_map("%s: frequency (%d) out of range\n",
    map_name, *freq);
   ret = -ERANGE;
   break;
  }
  i++;
 }
 *post_div = map[i].pd;
 *div = map[i].d;

 tda_map("(%d) %s: post div = 0x%02x, div = 0x%02x\n",
  i, map_name, *post_div, *div);
fail:
 return ret;
}
