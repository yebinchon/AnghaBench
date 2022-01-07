
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_agent_private {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void deref_mad_agent(struct ib_mad_agent_private *mad_agent_priv)
{
 if (atomic_dec_and_test(&mad_agent_priv->refcount))
  complete(&mad_agent_priv->comp);
}
