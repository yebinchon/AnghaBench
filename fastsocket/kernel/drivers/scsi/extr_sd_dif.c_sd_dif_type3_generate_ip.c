
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity_exchg {int dummy; } ;


 int sd_dif_ip_fn ;
 int sd_dif_type3_generate (struct blk_integrity_exchg*,int ) ;

__attribute__((used)) static void sd_dif_type3_generate_ip(struct blk_integrity_exchg *bix)
{
 sd_dif_type3_generate(bix, sd_dif_ip_fn);
}
