
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct twofish_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;
typedef int __le32 ;


 int ENCCYCLE (int) ;
 int INPACK (int,int ,int) ;
 int OUTUNPACK (int,int ,int) ;
 struct twofish_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void twofish_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct twofish_ctx *ctx = crypto_tfm_ctx(tfm);
 const __le32 *src = (const __le32 *)in;
 __le32 *dst = (__le32 *)out;


 u32 a, b, c, d;


 u32 x, y;


 INPACK (0, a, 0);
 INPACK (1, b, 1);
 INPACK (2, c, 2);
 INPACK (3, d, 3);


 ENCCYCLE (0);
 ENCCYCLE (1);
 ENCCYCLE (2);
 ENCCYCLE (3);
 ENCCYCLE (4);
 ENCCYCLE (5);
 ENCCYCLE (6);
 ENCCYCLE (7);


 OUTUNPACK (0, c, 4);
 OUTUNPACK (1, d, 5);
 OUTUNPACK (2, a, 6);
 OUTUNPACK (3, b, 7);

}
