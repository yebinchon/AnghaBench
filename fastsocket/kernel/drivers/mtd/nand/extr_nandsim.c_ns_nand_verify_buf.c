
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;


 int EFAULT ;
 int NS_DBG (char*) ;
 int memcmp (int const*,int *,int) ;
 int ns_nand_read_buf (struct mtd_info*,int *,int) ;
 int * ns_verify_buf ;

__attribute__((used)) static int ns_nand_verify_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 ns_nand_read_buf(mtd, (u_char *)&ns_verify_buf[0], len);

 if (!memcmp(buf, &ns_verify_buf[0], len)) {
  NS_DBG("verify_buf: the buffer is OK\n");
  return 0;
 } else {
  NS_DBG("verify_buf: the buffer is wrong\n");
  return -EFAULT;
 }
}
