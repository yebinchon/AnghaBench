
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int list_entry; } ;


 int bnad_list_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
bnad_remove_from_list(struct bnad *bnad)
{
 mutex_lock(&bnad_list_mutex);
 list_del(&bnad->list_entry);
 mutex_unlock(&bnad_list_mutex);
}
