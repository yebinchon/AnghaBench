
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned char u32 ;
struct trace_seq {char* buffer; int len; } ;
typedef int sector_t ;



 int const SERVICE_ACTION32 (unsigned char*) ;



 int trace_seq_printf (struct trace_seq*,char*,...) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *
scsi_trace_rw32(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = p->buffer + p->len, *cmd;
 sector_t lba = 0, txlen = 0;
 u32 ei_lbrt = 0;

 switch (SERVICE_ACTION32(cdb)) {
 case 131:
  cmd = "READ";
  break;
 case 130:
  cmd = "VERIFY";
  break;
 case 129:
  cmd = "WRITE";
  break;
 case 128:
  cmd = "WRITE_SAME";
  break;
 default:
  trace_seq_printf(p, "UNKNOWN");
  goto out;
 }

 lba |= ((u64)cdb[12] << 56);
 lba |= ((u64)cdb[13] << 48);
 lba |= ((u64)cdb[14] << 40);
 lba |= ((u64)cdb[15] << 32);
 lba |= (cdb[16] << 24);
 lba |= (cdb[17] << 16);
 lba |= (cdb[18] << 8);
 lba |= cdb[19];
 ei_lbrt |= (cdb[20] << 24);
 ei_lbrt |= (cdb[21] << 16);
 ei_lbrt |= (cdb[22] << 8);
 ei_lbrt |= cdb[23];
 txlen |= (cdb[28] << 24);
 txlen |= (cdb[29] << 16);
 txlen |= (cdb[30] << 8);
 txlen |= cdb[31];

 trace_seq_printf(p, "%s_32 lba=%llu txlen=%llu protect=%u ei_lbrt=%u",
    cmd, (unsigned long long)lba,
    (unsigned long long)txlen, cdb[10] >> 5, ei_lbrt);

 if (SERVICE_ACTION32(cdb) == 128)
  trace_seq_printf(p, " unmap=%u", cdb[10] >> 3 & 1);

out:
 trace_seq_putc(p, 0);

 return ret;
}
