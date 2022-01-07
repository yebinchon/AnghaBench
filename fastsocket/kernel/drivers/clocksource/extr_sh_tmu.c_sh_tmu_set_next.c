
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_priv {int dummy; } ;


 int TCNT ;
 int TCOR ;
 int TCR ;
 int sh_tmu_read (struct sh_tmu_priv*,int ) ;
 int sh_tmu_start_stop_ch (struct sh_tmu_priv*,int) ;
 int sh_tmu_write (struct sh_tmu_priv*,int ,unsigned long) ;

__attribute__((used)) static void sh_tmu_set_next(struct sh_tmu_priv *p, unsigned long delta,
       int periodic)
{

 sh_tmu_start_stop_ch(p, 0);


 sh_tmu_read(p, TCR);


 sh_tmu_write(p, TCR, 0x0020);


 if (periodic)
  sh_tmu_write(p, TCOR, delta);
 else
  sh_tmu_write(p, TCOR, 0xffffffff);

 sh_tmu_write(p, TCNT, delta);


 sh_tmu_start_stop_ch(p, 1);
}
