
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity_exchg {int dummy; } ;


 int sd_dif_ip_fn ;
 int sd_dif_type1_verify (struct blk_integrity_exchg*,int ) ;

__attribute__((used)) static int sd_dif_type1_verify_ip(struct blk_integrity_exchg *bix)
{
 return sd_dif_type1_verify(bix, sd_dif_ip_fn);
}
