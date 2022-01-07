
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int status; } ;


 int STATUS_EXIT_PENDING ;
 int STATUS_READY ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int iwl_is_ready(struct iwl_priv *priv)
{

 return test_bit(STATUS_READY, &priv->status) &&
        !test_bit(STATUS_EXIT_PENDING, &priv->status);
}
