
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ampdu_info {int dummy; } ;


 int kfree (struct ampdu_info*) ;

void brcms_c_ampdu_detach(struct ampdu_info *ampdu)
{
 kfree(ampdu);
}
