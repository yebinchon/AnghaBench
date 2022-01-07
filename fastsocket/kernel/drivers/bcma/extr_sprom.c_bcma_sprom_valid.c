
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ENOENT ;
 int SSB_SPROMSIZE_WORDS_R4 ;
 int const SSB_SPROM_REVISION_REV ;
 int bcma_sprom_check_crc (int const*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int bcma_sprom_valid(const u16 *sprom)
{
 u16 revision;
 int err;

 err = bcma_sprom_check_crc(sprom);
 if (err)
  return err;

 revision = sprom[SSB_SPROMSIZE_WORDS_R4 - 1] & SSB_SPROM_REVISION_REV;
 if (revision != 8 && revision != 9) {
  pr_err("Unsupported SPROM revision: %d\n", revision);
  return -ENOENT;
 }

 return 0;
}
