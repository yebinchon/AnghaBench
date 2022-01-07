
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int bnx2x_nvram_read (struct bnx2x*,int ,int *,int) ;

__attribute__((used)) static int bnx2x_nvram_read32(struct bnx2x *bp, u32 offset, u32 *buf,
         int buf_size)
{
 int rc;

 rc = bnx2x_nvram_read(bp, offset, (u8 *)buf, buf_size);

 if (!rc) {
  __be32 *be = (__be32 *)buf;

  while ((buf_size -= 4) >= 0)
   *buf++ = be32_to_cpu(*be++);
 }

 return rc;
}
