
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int available_protocols ;
 int ir_raw_handler_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u64
ir_raw_get_allowed_protocols(void)
{
 u64 protocols;
 mutex_lock(&ir_raw_handler_lock);
 protocols = available_protocols;
 mutex_unlock(&ir_raw_handler_lock);
 return protocols;
}
