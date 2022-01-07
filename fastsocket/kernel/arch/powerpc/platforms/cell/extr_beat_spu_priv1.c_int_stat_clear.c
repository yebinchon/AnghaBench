
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu {int spe_id; } ;


 int beat_clear_interrupt_status_of_spe (int ,int,int ) ;

__attribute__((used)) static void int_stat_clear(struct spu *spu, int class, u64 stat)
{
 beat_clear_interrupt_status_of_spe(spu->spe_id, class, stat);
}
