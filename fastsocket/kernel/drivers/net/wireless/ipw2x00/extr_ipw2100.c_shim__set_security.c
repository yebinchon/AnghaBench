
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct libipw_security {int flags; scalar_t__* key_sizes; scalar_t__ level; int active_key; scalar_t__ auth_mode; scalar_t__ enabled; int encrypt; int * keys; } ;
struct ipw2100_priv {int status; int action_mutex; TYPE_2__* ieee; } ;
struct TYPE_3__ {scalar_t__* key_sizes; int flags; int active_key; scalar_t__ auth_mode; scalar_t__ enabled; scalar_t__ level; int encrypt; int * keys; } ;
struct TYPE_4__ {TYPE_1__ sec; } ;


 int IPW_DEBUG_WEP (char*,char,char,char,char,char,char,char,char,char) ;
 int SEC_ACTIVE_KEY ;
 int SEC_AUTH_MODE ;
 int SEC_ENABLED ;
 int SEC_ENCRYPT ;
 int SEC_LEVEL ;
 scalar_t__ SEC_LEVEL_1 ;
 int STATUS_ASSOCIATED ;
 int STATUS_ASSOCIATING ;
 int STATUS_INITIALIZED ;
 int STATUS_SECURITY_UPDATED ;
 int ipw2100_configure_security (struct ipw2100_priv*,int ) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void shim__set_security(struct net_device *dev,
          struct libipw_security *sec)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 int i, force_update = 0;

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED))
  goto done;

 for (i = 0; i < 4; i++) {
  if (sec->flags & (1 << i)) {
   priv->ieee->sec.key_sizes[i] = sec->key_sizes[i];
   if (sec->key_sizes[i] == 0)
    priv->ieee->sec.flags &= ~(1 << i);
   else
    memcpy(priv->ieee->sec.keys[i], sec->keys[i],
           sec->key_sizes[i]);
   if (sec->level == SEC_LEVEL_1) {
    priv->ieee->sec.flags |= (1 << i);
    priv->status |= STATUS_SECURITY_UPDATED;
   } else
    priv->ieee->sec.flags &= ~(1 << i);
  }
 }

 if ((sec->flags & SEC_ACTIVE_KEY) &&
     priv->ieee->sec.active_key != sec->active_key) {
  if (sec->active_key <= 3) {
   priv->ieee->sec.active_key = sec->active_key;
   priv->ieee->sec.flags |= SEC_ACTIVE_KEY;
  } else
   priv->ieee->sec.flags &= ~SEC_ACTIVE_KEY;

  priv->status |= STATUS_SECURITY_UPDATED;
 }

 if ((sec->flags & SEC_AUTH_MODE) &&
     (priv->ieee->sec.auth_mode != sec->auth_mode)) {
  priv->ieee->sec.auth_mode = sec->auth_mode;
  priv->ieee->sec.flags |= SEC_AUTH_MODE;
  priv->status |= STATUS_SECURITY_UPDATED;
 }

 if (sec->flags & SEC_ENABLED && priv->ieee->sec.enabled != sec->enabled) {
  priv->ieee->sec.flags |= SEC_ENABLED;
  priv->ieee->sec.enabled = sec->enabled;
  priv->status |= STATUS_SECURITY_UPDATED;
  force_update = 1;
 }

 if (sec->flags & SEC_ENCRYPT)
  priv->ieee->sec.encrypt = sec->encrypt;

 if (sec->flags & SEC_LEVEL && priv->ieee->sec.level != sec->level) {
  priv->ieee->sec.level = sec->level;
  priv->ieee->sec.flags |= SEC_LEVEL;
  priv->status |= STATUS_SECURITY_UPDATED;
 }

 IPW_DEBUG_WEP("Security flags: %c %c%c%c%c %c%c%c%c\n",
        priv->ieee->sec.flags & (1 << 8) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 7) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 6) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 5) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 4) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 3) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 2) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 1) ? '1' : '0',
        priv->ieee->sec.flags & (1 << 0) ? '1' : '0');






 if (!(priv->status & (STATUS_ASSOCIATED | STATUS_ASSOCIATING)))
  ipw2100_configure_security(priv, 0);
      done:
 mutex_unlock(&priv->action_mutex);
}
