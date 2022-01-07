
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mite_csigr_dmac (int ) ;
 int mite_csigr_imode (int ) ;
 int mite_csigr_iowins (int ) ;
 int mite_csigr_mmode (int ) ;
 int mite_csigr_type (int ) ;
 int mite_csigr_version (int ) ;
 int mite_csigr_wins (int ) ;
 int mite_csigr_wpdep (int ) ;
 int printk (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_chip_signature(u32 csigr_bits)
{
 printk
     ("mite: version = %i, type = %i, mite mode = %i, interface mode = %i\n",
      mite_csigr_version(csigr_bits), mite_csigr_type(csigr_bits),
      mite_csigr_mmode(csigr_bits), mite_csigr_imode(csigr_bits));
 printk
     ("mite: num channels = %i, write post fifo depth = %i, wins = %i, iowins = %i\n",
      mite_csigr_dmac(csigr_bits), mite_csigr_wpdep(csigr_bits),
      mite_csigr_wins(csigr_bits), mite_csigr_iowins(csigr_bits));
}
