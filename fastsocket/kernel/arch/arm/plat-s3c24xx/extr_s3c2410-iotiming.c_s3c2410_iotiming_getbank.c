
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long hclk_tns; } ;
struct s3c_cpufreq_config {TYPE_1__ freq; } ;
struct s3c2410_iobank_timing {unsigned long bankcon; int tacc; void* tacs; void* tcos; void* tcoh; void* tcah; } ;


 unsigned long S3C2410_BANKCON_Tacc_SHIFT ;
 unsigned long S3C2410_BANKCON_Tacs_SHIFT ;
 unsigned long S3C2410_BANKCON_Tcah_SHIFT ;
 unsigned long S3C2410_BANKCON_Tcoh_SHIFT ;
 unsigned long S3C2410_BANKCON_Tcos_SHIFT ;
 void* get_0124 (unsigned long,unsigned long) ;
 int get_tacc (unsigned long,unsigned long) ;

void s3c2410_iotiming_getbank(struct s3c_cpufreq_config *cfg,
         struct s3c2410_iobank_timing *bt)
{
 unsigned long bankcon = bt->bankcon;
 unsigned long hclk = cfg->freq.hclk_tns;

 bt->tcah = get_0124(hclk, bankcon >> S3C2410_BANKCON_Tcah_SHIFT);
 bt->tcoh = get_0124(hclk, bankcon >> S3C2410_BANKCON_Tcoh_SHIFT);
 bt->tcos = get_0124(hclk, bankcon >> S3C2410_BANKCON_Tcos_SHIFT);
 bt->tacs = get_0124(hclk, bankcon >> S3C2410_BANKCON_Tacs_SHIFT);
 bt->tacc = get_tacc(hclk, bankcon >> S3C2410_BANKCON_Tacc_SHIFT);
}
