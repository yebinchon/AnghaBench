
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int sta_key_max_num; int ucode_key_table; } ;


 int WEP_INVALID_OFFSET ;
 int test_and_set_bit (int,int *) ;

int iwl_get_free_ucode_key_offset(struct iwl_priv *priv)
{
 int i;

 for (i = 0; i < priv->sta_key_max_num; i++)
  if (!test_and_set_bit(i, &priv->ucode_key_table))
   return i;

 return WEP_INVALID_OFFSET;
}
