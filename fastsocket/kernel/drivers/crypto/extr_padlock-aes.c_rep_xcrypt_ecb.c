
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cword {int dummy; } ;



__attribute__((used)) static inline void rep_xcrypt_ecb(const u8 *input, u8 *output, void *key,
      struct cword *control_word, int count)
{
 asm volatile (".byte 0xf3,0x0f,0xa7,0xc8"
        : "+S"(input), "+D"(output)
        : "d"(control_word), "b"(key), "c"(count));
}
