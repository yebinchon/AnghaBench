
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stir_cb {int speed; } ;
typedef int __u8 ;


 scalar_t__ isfir (int ) ;
 int stir_fir_chars (struct stir_cb*,int const*,int) ;
 int stir_sir_chars (struct stir_cb*,int const*,int) ;

__attribute__((used)) static inline void unwrap_chars(struct stir_cb *stir,
    const __u8 *bytes, int length)
{
 if (isfir(stir->speed))
  stir_fir_chars(stir, bytes, length);
 else
  stir_sir_chars(stir, bytes, length);
}
