
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t dtype ;


 size_t A0 ;
 size_t MM ;
 int NN ;
 scalar_t__* Pp ;

__attribute__((used)) static void
generate_gf(dtype Alpha_to[NN + 1], dtype Index_of[NN + 1])
{
  register int i, mask;

  mask = 1;
  Alpha_to[MM] = 0;
  for (i = 0; i < MM; i++) {
    Alpha_to[i] = mask;
    Index_of[Alpha_to[i]] = i;

    if (Pp[i] != 0)
      Alpha_to[MM] ^= mask;
    mask <<= 1;
  }
  Index_of[Alpha_to[MM]] = MM;





  mask >>= 1;
  for (i = MM + 1; i < NN; i++) {
    if (Alpha_to[i - 1] >= mask)
      Alpha_to[i] = Alpha_to[MM] ^ ((Alpha_to[i - 1] ^ mask) << 1);
    else
      Alpha_to[i] = Alpha_to[i - 1] << 1;
    Index_of[Alpha_to[i]] = i;
  }
  Index_of[0] = A0;
  Alpha_to[NN] = 0;
}
