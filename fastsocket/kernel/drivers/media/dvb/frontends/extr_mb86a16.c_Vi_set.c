
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;


 int EREMOTEIO ;
 int MB86A16_ERROR ;
 int MB86A16_VISET2 ;
 int MB86A16_VISET3 ;
 int dprintk (int ,int ,int,char*) ;
 scalar_t__ mb86a16_write (struct mb86a16_state*,int ,int) ;
 int verbose ;

__attribute__((used)) static int Vi_set(struct mb86a16_state *state, unsigned char ETH, unsigned char VIA)
{
 if (mb86a16_write(state, MB86A16_VISET2, 0x04) < 0)
  goto err;
 if (mb86a16_write(state, MB86A16_VISET3, 0xf5) < 0)
  goto err;

 return 0;
err:
 dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
 return -EREMOTEIO;
}
