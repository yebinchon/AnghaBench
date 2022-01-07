
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mib_sem; int ** mib; } ;
typedef TYPE_1__ islpci_private ;
struct TYPE_6__ {int flags; int size; int range; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OID_FLAG_CACHED ;
 int OID_NUM_LAST ;
 int init_rwsem (int *) ;
 TYPE_4__* isl_oid ;
 int ** kcalloc (int,int,int ) ;
 int * kzalloc (int,int ) ;
 int prism54_mib_init (TYPE_1__*) ;

int
mgt_init(islpci_private *priv)
{
 int i;

 priv->mib = kcalloc(OID_NUM_LAST, sizeof (void *), GFP_KERNEL);
 if (!priv->mib)
  return -ENOMEM;


 for (i = 0; i < OID_NUM_LAST; i++) {
  if (isl_oid[i].flags & OID_FLAG_CACHED) {
   priv->mib[i] = kzalloc(isl_oid[i].size *
            (isl_oid[i].range + 1),
            GFP_KERNEL);
   if (!priv->mib[i])
    return -ENOMEM;
  } else
   priv->mib[i] = ((void*)0);
 }

 init_rwsem(&priv->mib_sem);
 prism54_mib_init(priv);

 return 0;
}
