
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;
struct kvec {size_t iov_len; void* iov_base; } ;
typedef int loff_t ;


 int lpddr_writev (struct mtd_info*,struct kvec*,int,int ,size_t*) ;

__attribute__((used)) static int lpddr_write_buffers(struct mtd_info *mtd, loff_t to, size_t len,
    size_t *retlen, const u_char *buf)
{
 struct kvec vec;

 vec.iov_base = (void *) buf;
 vec.iov_len = len;

 return lpddr_writev(mtd, &vec, 1, to, retlen);
}
