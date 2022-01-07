
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int AOE_PARTITIONS ;
 int N_DEVS ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,int) ;
 int spin_unlock_irqrestore (int *,int) ;
 int used_minors ;
 int used_minors_lock ;

__attribute__((used)) static int
minor_get_dyn(ulong *sysminor)
{
 ulong flags;
 ulong n;
 int error = 0;

 spin_lock_irqsave(&used_minors_lock, flags);
 n = find_first_zero_bit(used_minors, N_DEVS);
 if (n < N_DEVS)
  set_bit(n, used_minors);
 else
  error = -1;
 spin_unlock_irqrestore(&used_minors_lock, flags);

 *sysminor = n * AOE_PARTITIONS;
 return error;
}
