
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic64_t ;


 int atomic64_inc_return (int *) ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int) ;
 scalar_t__ get_seconds () ;

u64 cper_next_record_id(void)
{
 static atomic64_t seq;

 if (!atomic64_read(&seq))
  atomic64_set(&seq, ((u64)get_seconds()) << 32);

 return atomic64_inc_return(&seq);
}
