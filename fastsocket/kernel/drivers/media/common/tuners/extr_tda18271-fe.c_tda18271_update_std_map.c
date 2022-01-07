
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_std_map {int dummy; } ;
struct tda18271_priv {struct tda18271_std_map std; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int EINVAL ;
 int atsc_6 ;
 int atv_b ;
 int atv_dk ;
 int atv_gh ;
 int atv_i ;
 int atv_l ;
 int atv_lc ;
 int atv_mn ;
 int dvbt_6 ;
 int dvbt_7 ;
 int dvbt_8 ;
 int fm_radio ;
 int qam_6 ;
 int qam_8 ;
 int tda18271_update_std (int ,char*) ;

__attribute__((used)) static int tda18271_update_std_map(struct dvb_frontend *fe,
       struct tda18271_std_map *map)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 struct tda18271_std_map *std = &priv->std;

 if (!map)
  return -EINVAL;

 tda18271_update_std(fm_radio, "fm");
 tda18271_update_std(atv_b, "atv b");
 tda18271_update_std(atv_dk, "atv dk");
 tda18271_update_std(atv_gh, "atv gh");
 tda18271_update_std(atv_i, "atv i");
 tda18271_update_std(atv_l, "atv l");
 tda18271_update_std(atv_lc, "atv l'");
 tda18271_update_std(atv_mn, "atv mn");
 tda18271_update_std(atsc_6, "atsc 6");
 tda18271_update_std(dvbt_6, "dvbt 6");
 tda18271_update_std(dvbt_7, "dvbt 7");
 tda18271_update_std(dvbt_8, "dvbt 8");
 tda18271_update_std(qam_6, "qam 6");
 tda18271_update_std(qam_8, "qam 8");

 return 0;
}
