
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct gdth_cmndinfo {scalar_t__ index; } ;
struct TYPE_3__ {int smp_lock; struct gdth_cmndinfo* cmndinfo; } ;
typedef TYPE_1__ gdth_ha_str ;


 int GDTH_MAXCMDS ;
 int memset (struct gdth_cmndinfo*,int ,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static struct gdth_cmndinfo *gdth_get_cmndinfo(gdth_ha_str *ha)
{
 struct gdth_cmndinfo *priv = ((void*)0);
 ulong flags;
 int i;

 spin_lock_irqsave(&ha->smp_lock, flags);

 for (i=0; i<GDTH_MAXCMDS; ++i) {
  if (ha->cmndinfo[i].index == 0) {
   priv = &ha->cmndinfo[i];
   memset(priv, 0, sizeof(*priv));
   priv->index = i+1;
   break;
  }
 }

 spin_unlock_irqrestore(&ha->smp_lock, flags);

 return priv;
}
