
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int wl; } ;
struct TYPE_2__ {int d16; int d32; } ;
struct b43_iv {TYPE_1__ data; int offset_size; } ;
typedef int __be32 ;
typedef int __be16 ;


 int B43_IV_32BIT ;
 int B43_IV_OFFSET_MASK ;
 int BUILD_BUG_ON (int) ;
 int EPROTO ;
 int b43_print_fw_helptext (int ,int) ;
 int b43_write16 (struct b43_wldev*,int,int) ;
 int b43_write32 (struct b43_wldev*,int,int ) ;
 int b43err (int ,char*) ;
 int be16_to_cpu (int ) ;
 int get_unaligned_be32 (int *) ;

__attribute__((used)) static int b43_write_initvals(struct b43_wldev *dev,
         const struct b43_iv *ivals,
         size_t count,
         size_t array_size)
{
 const struct b43_iv *iv;
 u16 offset;
 size_t i;
 bool bit32;

 BUILD_BUG_ON(sizeof(struct b43_iv) != 6);
 iv = ivals;
 for (i = 0; i < count; i++) {
  if (array_size < sizeof(iv->offset_size))
   goto err_format;
  array_size -= sizeof(iv->offset_size);
  offset = be16_to_cpu(iv->offset_size);
  bit32 = !!(offset & B43_IV_32BIT);
  offset &= B43_IV_OFFSET_MASK;
  if (offset >= 0x1000)
   goto err_format;
  if (bit32) {
   u32 value;

   if (array_size < sizeof(iv->data.d32))
    goto err_format;
   array_size -= sizeof(iv->data.d32);

   value = get_unaligned_be32(&iv->data.d32);
   b43_write32(dev, offset, value);

   iv = (const struct b43_iv *)((const uint8_t *)iv +
       sizeof(__be16) +
       sizeof(__be32));
  } else {
   u16 value;

   if (array_size < sizeof(iv->data.d16))
    goto err_format;
   array_size -= sizeof(iv->data.d16);

   value = be16_to_cpu(iv->data.d16);
   b43_write16(dev, offset, value);

   iv = (const struct b43_iv *)((const uint8_t *)iv +
       sizeof(__be16) +
       sizeof(__be16));
  }
 }
 if (array_size)
  goto err_format;

 return 0;

err_format:
 b43err(dev->wl, "Initial Values Firmware file-format error.\n");
 b43_print_fw_helptext(dev->wl, 1);

 return -EPROTO;
}
