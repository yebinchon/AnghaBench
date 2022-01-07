
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_target {int kref; } ;


 int kref_put (int *,int ) ;
 int sbp2_release_target ;

__attribute__((used)) static void sbp2_target_put(struct sbp2_target *tgt)
{
 kref_put(&tgt->kref, sbp2_release_target);
}
