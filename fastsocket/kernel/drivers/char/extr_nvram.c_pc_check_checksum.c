
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PC_CKS_LOC ;
 int PC_CKS_RANGE_END ;
 int PC_CKS_RANGE_START ;
 int __nvram_read_byte (int) ;

__attribute__((used)) static int pc_check_checksum(void)
{
 int i;
 unsigned short sum = 0;
 unsigned short expect;

 for (i = PC_CKS_RANGE_START; i <= PC_CKS_RANGE_END; ++i)
  sum += __nvram_read_byte(i);
 expect = __nvram_read_byte(PC_CKS_LOC)<<8 |
     __nvram_read_byte(PC_CKS_LOC+1);
 return (sum & 0xffff) == expect;
}
