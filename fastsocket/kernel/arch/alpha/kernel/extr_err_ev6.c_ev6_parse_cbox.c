
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EV6__C_STAT__BC_PERR ;
 int EV6__C_STAT__DC_PERR ;
 int EV6__C_STAT__DOUBLE ;
 int EV6__C_STAT__ERRMASK ;
 int EV6__C_STAT__ISTREAM ;
 int EV6__C_STAT__PROBE_BC_ERR0 ;
 int EV6__C_STAT__PROBE_BC_ERR1 ;
 int EV6__C_STAT__SOURCE ;
 int EV6__C_STAT__SOURCE_BCACHE ;
 int EV6__C_STAT__SOURCE_MEMORY ;
 int EV6__C_STS__DIRTY ;
 int EV6__C_STS__PARITY ;
 int EV6__C_STS__SHARED ;
 int EV6__C_STS__VALID ;
 int EXTRACT (int,int ) ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int err_print_prefix ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int
ev6_parse_cbox(u64 c_addr, u64 c1_syn, u64 c2_syn,
        u64 c_stat, u64 c_sts, int print)
{
 char *sourcename[] = { "UNKNOWN", "UNKNOWN", "UNKNOWN",
          "MEMORY", "BCACHE", "DCACHE",
          "BCACHE PROBE", "BCACHE PROBE" };
 char *streamname[] = { "D", "I" };
 char *bitsname[] = { "SINGLE", "DOUBLE" };
 int status = MCHK_DISPOSITION_REPORT;
 int source = -1, stream = -1, bits = -1;
 if (!(c_stat & (0x1F)))
  return MCHK_DISPOSITION_UNKNOWN_ERROR;

 if (!print)
  return status;

 source = EXTRACT(c_stat, EV6__C_STAT__SOURCE);
 stream = EXTRACT(c_stat, EV6__C_STAT__ISTREAM);
 bits = EXTRACT(c_stat, EV6__C_STAT__DOUBLE);

 if (c_stat & (0x01)) {
  printk("%s    Bcache tag parity error\n", err_print_prefix);
  source = -1;
 }

 if (c_stat & (0x02)) {
  printk("%s    Dcache tag parity error\n", err_print_prefix);
  source = -1;
 }

 if (c_stat == (0x06) ||
     c_stat == (0x07)) {
  printk("%s    Bcache single-bit error on a probe hit\n",
         err_print_prefix);
  source = -1;
 }

 if (source != -1)
  printk("%s    %s-STREAM %s-BIT ECC error from %s\n",
         err_print_prefix,
         streamname[stream], bitsname[bits], sourcename[source]);

 printk("%s    Address: 0x%016llx\n"
          "    Syndrome[upper.lower]: %02llx.%02llx\n",
        err_print_prefix,
        c_addr,
        c2_syn, c1_syn);

 if (source == (0x03) ||
     source == (0x04))
  printk("%s    Block status: %s%s%s%s\n",
         err_print_prefix,
         (c_sts & (1 << 0)) ? "SHARED " : "",
         (c_sts & (1 << 1)) ? "DIRTY " : "",
         (c_sts & (1 << 2)) ? "VALID " : "",
         (c_sts & (1 << 3)) ? "PARITY " : "");

 return status;
}
