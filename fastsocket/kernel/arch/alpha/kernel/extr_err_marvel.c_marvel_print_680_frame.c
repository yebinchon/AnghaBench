
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev7_pal_environmental_subpacket {char* module_type; int condition; int unit_id; int drawer; int cabinet; } ;
struct ev7_lf_subpackets {struct ev7_pal_environmental_subpacket** env; } ;


 int EL_TYPE__PAL__ENV__AIRMOVER_FAN ;
 int EL_TYPE__PAL__ENV__AMBIENT_TEMPERATURE ;
 int EL_TYPE__PAL__ENV__HOT_PLUG ;
 int EL_TYPE__PAL__ENV__INTRUSION ;
 int EL_TYPE__PAL__ENV__LAN ;
 int EL_TYPE__PAL__ENV__POWER_SUPPLY ;
 int EL_TYPE__PAL__ENV__VOLTAGE ;
 int err_print_prefix ;
 size_t ev7_lf_env_index (int) ;
 int printk (char*,int ,char*,int ,int ) ;

__attribute__((used)) static void
marvel_print_680_frame(struct ev7_lf_subpackets *lf_subpackets)
{
}
