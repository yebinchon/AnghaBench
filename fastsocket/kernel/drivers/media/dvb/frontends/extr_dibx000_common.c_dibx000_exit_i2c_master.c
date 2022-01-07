
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dibx000_i2c_master {int gated_tuner_i2c_adap; } ;


 int i2c_del_adapter (int *) ;

void dibx000_exit_i2c_master(struct dibx000_i2c_master *mst)
{
 i2c_del_adapter(&mst->gated_tuner_i2c_adap);
}
