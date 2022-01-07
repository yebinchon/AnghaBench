
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __be32 ;


 int EOVERFLOW ;
 int cpu_to_be32 (unsigned int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int set_msg_len(u8 *block, unsigned int msglen, int csize)
{
 __be32 data;

 memset(block, 0, csize);
 block += csize;

 if (csize >= 4)
  csize = 4;
 else if (msglen > (unsigned int)(1 << (8 * csize)))
  return -EOVERFLOW;

 data = cpu_to_be32(msglen);
 memcpy(block - csize, (u8 *)&data + 4 - csize, csize);

 return 0;
}
