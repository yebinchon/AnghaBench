
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_id_private {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void cm_deref_id(struct cm_id_private *cm_id_priv)
{
 if (atomic_dec_and_test(&cm_id_priv->refcount))
  complete(&cm_id_priv->comp);
}
