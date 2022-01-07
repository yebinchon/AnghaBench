
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int*,int*,int) ;
 int set_msg_len (int*,unsigned int,unsigned int) ;

__attribute__((used)) static int generate_b0(u8 *iv, unsigned int assoclen, unsigned int authsize,
         unsigned int cryptlen, u8 *b0)
{
 unsigned int l, lp, m = authsize;
 int rc;

 memcpy(b0, iv, 16);

 lp = b0[0];
 l = lp + 1;


 *b0 |= (8 * ((m - 2) / 2));


 if (assoclen)
  *b0 |= 64;

 rc = set_msg_len(b0 + 16 - l, cryptlen, l);

 return rc;
}
