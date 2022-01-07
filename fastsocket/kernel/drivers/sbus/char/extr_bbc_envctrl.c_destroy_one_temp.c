
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_cpu_temperature {int client; } ;


 int bbc_i2c_detach (int ) ;
 int kfree (struct bbc_cpu_temperature*) ;

__attribute__((used)) static void destroy_one_temp(struct bbc_cpu_temperature *tp)
{
 bbc_i2c_detach(tp->client);
 kfree(tp);
}
