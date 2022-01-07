
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {scalar_t__ id; int list_entry; } ;


 int bna_id ;
 int bnad_list ;
 int bnad_list_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
bnad_add_to_list(struct bnad *bnad)
{
 mutex_lock(&bnad_list_mutex);
 list_add_tail(&bnad->list_entry, &bnad_list);
 bnad->id = bna_id++;
 mutex_unlock(&bnad_list_mutex);
}
