
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data {int mutex; } ;


 scalar_t__ down_trylock (int *) ;
 int up (int *) ;

__attribute__((used)) static void
salinfo_work_to_do(struct salinfo_data *data)
{
 (void)(down_trylock(&data->mutex) ?: 0);
 up(&data->mutex);
}
