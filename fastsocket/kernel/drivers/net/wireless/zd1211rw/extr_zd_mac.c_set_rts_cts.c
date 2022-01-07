
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct zd_mac {TYPE_1__ chip; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_chip_set_rts_cts_rate_locked (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void set_rts_cts(struct zd_mac *mac, unsigned int short_preamble)
{
 mutex_lock(&mac->chip.mutex);
 zd_chip_set_rts_cts_rate_locked(&mac->chip, short_preamble);
 mutex_unlock(&mac->chip.mutex);
}
