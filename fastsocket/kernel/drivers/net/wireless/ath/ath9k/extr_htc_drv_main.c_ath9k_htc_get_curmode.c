
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int dummy; } ;
struct ath9k_channel {int chanmode; } ;
typedef enum htc_phymode { ____Placeholder_htc_phymode } htc_phymode ;
 int EINVAL ;
 int HTC_MODE_11NA ;
 int HTC_MODE_11NG ;
 int WARN_ON (int) ;

__attribute__((used)) static enum htc_phymode ath9k_htc_get_curmode(struct ath9k_htc_priv *priv,
           struct ath9k_channel *ichan)
{
 enum htc_phymode mode;

 mode = -EINVAL;

 switch (ichan->chanmode) {
 case 131:
 case 130:
 case 128:
 case 129:
  mode = HTC_MODE_11NG;
  break;
 case 135:
 case 134:
 case 132:
 case 133:
  mode = HTC_MODE_11NA;
  break;
 default:
  break;
 }

 WARN_ON(mode < 0);

 return mode;
}
