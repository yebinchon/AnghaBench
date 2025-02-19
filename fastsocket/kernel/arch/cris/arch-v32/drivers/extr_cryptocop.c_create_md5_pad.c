
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG (int ) ;
 int ENOMEM ;
 unsigned long long MD5_BLOCK_LENGTH ;
 size_t MD5_MIN_PAD_LENGTH ;
 size_t MD5_PAD_LENGTH_FIELD_LENGTH ;
 unsigned char* kmalloc (size_t,int) ;
 int memset (unsigned char*,int ,size_t) ;
 int printk (char*,unsigned long long,unsigned long long) ;

__attribute__((used)) static int create_md5_pad(int alloc_flag, unsigned long long hashed_length, char **pad, size_t *pad_length)
{
 size_t padlen = MD5_BLOCK_LENGTH - (hashed_length % MD5_BLOCK_LENGTH);
 unsigned char *p;
 int i;
 unsigned long long int bit_length = hashed_length << 3;

 if (padlen < MD5_MIN_PAD_LENGTH) padlen += MD5_BLOCK_LENGTH;

 p = kmalloc(padlen, alloc_flag);
 if (!p) return -ENOMEM;

 *p = 0x80;
 memset(p+1, 0, padlen - 1);

 DEBUG(printk("create_md5_pad: hashed_length=%lld bits == %lld bytes\n", bit_length, hashed_length));

 i = padlen - MD5_PAD_LENGTH_FIELD_LENGTH;
 while (bit_length != 0){
  p[i++] = bit_length % 0x100;
  bit_length >>= 8;
 }

 *pad = (char*)p;
 *pad_length = padlen;

 return 0;
}
