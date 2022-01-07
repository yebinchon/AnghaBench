
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;


 int EFAULT ;

__attribute__((used)) static int mxc_nand_verify_buf(struct mtd_info *mtd,
    const u_char *buf, int len)
{
 return -EFAULT;
}
