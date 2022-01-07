
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int __einj_error_inject (int ,int ,int ) ;
 int einj_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int einj_error_inject(u32 type, u64 param1, u64 param2)
{
 int rc;

 mutex_lock(&einj_mutex);
 rc = __einj_error_inject(type, param1, param2);
 mutex_unlock(&einj_mutex);

 return rc;
}
