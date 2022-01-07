
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; } ;


 int CSR_FH_INT_STATUS ;
 int CSR_INT ;
 int CSR_INT_MASK ;
 int S_INT_ENABLED ;
 int _il_wr (struct il_priv*,int ,int) ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void
il_disable_interrupts(struct il_priv *il)
{
 clear_bit(S_INT_ENABLED, &il->status);


 _il_wr(il, CSR_INT_MASK, 0x00000000);



 _il_wr(il, CSR_INT, 0xffffffff);
 _il_wr(il, CSR_FH_INT_STATUS, 0xffffffff);
}
