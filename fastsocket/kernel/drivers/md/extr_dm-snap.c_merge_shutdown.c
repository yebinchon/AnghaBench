
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int state_bits; } ;


 int RUNNING_MERGE ;
 int clear_bit_unlock (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void merge_shutdown(struct dm_snapshot *s)
{
 clear_bit_unlock(RUNNING_MERGE, &s->state_bits);
 smp_mb__after_clear_bit();
 wake_up_bit(&s->state_bits, RUNNING_MERGE);
}
