
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;


 int ADM8211_CSR_READ (int ) ;
 int ADM8211_CSR_WRITE (int ,int) ;
 scalar_t__ ADM8211_REV_BA ;
 int ADM8211_WEPCTL_SEL_WEPTABLE ;
 int ADM8211_WEPCTL_TABLE_WR ;
 int WEPCTL ;
 int WESK ;
 int msleep (int) ;

__attribute__((used)) static inline void adm8211_write_sram(struct ieee80211_hw *dev,
          u32 addr, u32 data)
{
 struct adm8211_priv *priv = dev->priv;

 ADM8211_CSR_WRITE(WEPCTL, addr | ADM8211_WEPCTL_TABLE_WR |
     (priv->pdev->revision < ADM8211_REV_BA ?
      0 : ADM8211_WEPCTL_SEL_WEPTABLE ));
 ADM8211_CSR_READ(WEPCTL);
 msleep(1);

 ADM8211_CSR_WRITE(WESK, data);
 ADM8211_CSR_READ(WESK);
 msleep(1);
}
