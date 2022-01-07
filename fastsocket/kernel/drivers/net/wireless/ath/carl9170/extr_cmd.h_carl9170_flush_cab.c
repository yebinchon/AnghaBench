
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int dummy; } ;


 int CARL9170_BCN_CTRL_DRAIN ;
 int carl9170_bcn_ctrl (struct ar9170*,unsigned int const,int ,int ,int ) ;

__attribute__((used)) static inline int carl9170_flush_cab(struct ar9170 *ar,
         const unsigned int vif_id)
{
 return carl9170_bcn_ctrl(ar, vif_id, CARL9170_BCN_CTRL_DRAIN, 0, 0);
}
