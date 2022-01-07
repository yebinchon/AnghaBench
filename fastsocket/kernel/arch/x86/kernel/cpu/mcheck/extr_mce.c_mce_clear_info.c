
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce_info {int inuse; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void mce_clear_info(struct mce_info *mi)
{
 atomic_set(&mi->inuse, 0);
}
