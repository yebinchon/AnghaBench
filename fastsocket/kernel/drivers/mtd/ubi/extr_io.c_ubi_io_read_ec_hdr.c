
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ubi_ec_hdr {int hdr_crc; int magic; } ;
struct ubi_device {int peb_count; } ;


 int EBADMSG ;
 int EINVAL ;
 int UBI_CRC32_INIT ;
 scalar_t__ UBI_EC_HDR_MAGIC ;
 int UBI_EC_HDR_SIZE ;
 int UBI_EC_HDR_SIZE_CRC ;
 int UBI_IO_BAD_EC_HDR ;
 int UBI_IO_BITFLIPS ;
 scalar_t__ UBI_IO_DEBUG ;
 int UBI_IO_PEB_EMPTY ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ check_pattern (struct ubi_ec_hdr*,int,int ) ;
 scalar_t__ crc32 (int ,struct ubi_ec_hdr*,int ) ;
 int dbg_io (char*,int) ;
 int dbg_msg (char*,int,...) ;
 int ubi_assert (int) ;
 int ubi_dbg_dump_ec_hdr (struct ubi_ec_hdr*) ;
 int ubi_err (char*,int) ;
 int ubi_io_read (struct ubi_device*,struct ubi_ec_hdr*,int,int ,int ) ;
 int ubi_warn (char*,int,...) ;
 int validate_ec_hdr (struct ubi_device*,struct ubi_ec_hdr*) ;

int ubi_io_read_ec_hdr(struct ubi_device *ubi, int pnum,
         struct ubi_ec_hdr *ec_hdr, int verbose)
{
 int err, read_err = 0;
 uint32_t crc, magic, hdr_crc;

 dbg_io("read EC header from PEB %d", pnum);
 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);

 err = ubi_io_read(ubi, ec_hdr, pnum, 0, UBI_EC_HDR_SIZE);
 if (err) {
  if (err != UBI_IO_BITFLIPS && err != -EBADMSG)
   return err;
  read_err = err;
 }

 magic = be32_to_cpu(ec_hdr->magic);
 if (magic != UBI_EC_HDR_MAGIC) {
  if (read_err != -EBADMSG &&
      check_pattern(ec_hdr, 0xFF, UBI_EC_HDR_SIZE)) {

   if (verbose)
    ubi_warn("no EC header found at PEB %d, "
      "only 0xFF bytes", pnum);
   else if (UBI_IO_DEBUG)
    dbg_msg("no EC header found at PEB %d, "
     "only 0xFF bytes", pnum);
   return UBI_IO_PEB_EMPTY;
  }





  if (verbose) {
   ubi_warn("bad magic number at PEB %d: %08x instead of "
     "%08x", pnum, magic, UBI_EC_HDR_MAGIC);
   ubi_dbg_dump_ec_hdr(ec_hdr);
  } else if (UBI_IO_DEBUG)
   dbg_msg("bad magic number at PEB %d: %08x instead of "
    "%08x", pnum, magic, UBI_EC_HDR_MAGIC);
  return UBI_IO_BAD_EC_HDR;
 }

 crc = crc32(UBI_CRC32_INIT, ec_hdr, UBI_EC_HDR_SIZE_CRC);
 hdr_crc = be32_to_cpu(ec_hdr->hdr_crc);

 if (hdr_crc != crc) {
  if (verbose) {
   ubi_warn("bad EC header CRC at PEB %d, calculated "
     "%#08x, read %#08x", pnum, crc, hdr_crc);
   ubi_dbg_dump_ec_hdr(ec_hdr);
  } else if (UBI_IO_DEBUG)
   dbg_msg("bad EC header CRC at PEB %d, calculated "
    "%#08x, read %#08x", pnum, crc, hdr_crc);
  return UBI_IO_BAD_EC_HDR;
 }


 err = validate_ec_hdr(ubi, ec_hdr);
 if (err) {
  ubi_err("validation failed for PEB %d", pnum);
  return -EINVAL;
 }

 return read_err ? UBI_IO_BITFLIPS : 0;
}
