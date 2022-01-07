
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; } ;


 int S_ALIVE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int
il_is_alive(struct il_priv *il)
{
 return test_bit(S_ALIVE, &il->status);
}
