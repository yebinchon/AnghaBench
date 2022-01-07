
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int status; } ;


 int STATUS_CT_KILL ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int iwl_is_ctkill(struct iwl_priv *priv)
{
 return test_bit(STATUS_CT_KILL, &priv->status);
}
