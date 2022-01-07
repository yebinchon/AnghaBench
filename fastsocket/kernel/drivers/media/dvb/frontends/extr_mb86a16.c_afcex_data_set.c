
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;


 int MB86A16_AFCEXH ;
 int MB86A16_AFCEXL ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ mb86a16_write (struct mb86a16_state*,int ,unsigned char) ;
 int verbose ;

__attribute__((used)) static int afcex_data_set(struct mb86a16_state *state,
     unsigned char AFCEX_L,
     unsigned char AFCEX_H)
{
 if (mb86a16_write(state, MB86A16_AFCEXL, AFCEX_L) < 0)
  goto err;
 if (mb86a16_write(state, MB86A16_AFCEXH, AFCEX_H) < 0)
  goto err;

 return 0;
err:
 dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");

 return -1;
}
