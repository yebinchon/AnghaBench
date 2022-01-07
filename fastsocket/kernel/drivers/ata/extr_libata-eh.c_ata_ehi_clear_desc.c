
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_eh_info {char* desc; scalar_t__ desc_len; } ;



void ata_ehi_clear_desc(struct ata_eh_info *ehi)
{
 ehi->desc[0] = '\0';
 ehi->desc_len = 0;
}
