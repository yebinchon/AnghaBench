
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct ata_eh_info {scalar_t__ desc_len; scalar_t__ desc; } ;


 scalar_t__ ATA_EH_DESC_LEN ;
 scalar_t__ vscnprintf (scalar_t__,scalar_t__,char const*,int ) ;

__attribute__((used)) static void __ata_ehi_pushv_desc(struct ata_eh_info *ehi, const char *fmt,
     va_list args)
{
 ehi->desc_len += vscnprintf(ehi->desc + ehi->desc_len,
         ATA_EH_DESC_LEN - ehi->desc_len,
         fmt, args);
}
