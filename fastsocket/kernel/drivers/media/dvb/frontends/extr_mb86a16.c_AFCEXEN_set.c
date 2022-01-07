
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;


 int EREMOTEIO ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ mb86a16_write (struct mb86a16_state*,int,int) ;
 int verbose ;

__attribute__((used)) static int AFCEXEN_set(struct mb86a16_state *state,
         int afcexen,
         int smrt)
{
 unsigned char AFCA ;

 if (smrt > 18875)
  AFCA = 4;
 else if (smrt > 9375)
  AFCA = 3;
 else if (smrt > 2250)
  AFCA = 2;
 else
  AFCA = 1;

 if (mb86a16_write(state, 0x2a, 0x02 | (afcexen << 5) | (AFCA << 2)) < 0)
  goto err;

 return 0;

err:
 dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
 return -EREMOTEIO;
}
