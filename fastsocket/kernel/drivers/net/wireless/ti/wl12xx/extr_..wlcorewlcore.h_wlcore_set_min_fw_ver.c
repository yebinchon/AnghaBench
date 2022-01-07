
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {unsigned int* min_sr_fw_ver; unsigned int* min_mr_fw_ver; } ;


 size_t FW_VER_CHIP ;
 size_t FW_VER_IF_TYPE ;
 size_t FW_VER_MAJOR ;
 size_t FW_VER_MINOR ;
 size_t FW_VER_SUBTYPE ;

__attribute__((used)) static inline void
wlcore_set_min_fw_ver(struct wl1271 *wl, unsigned int chip,
        unsigned int iftype_sr, unsigned int major_sr,
        unsigned int subtype_sr, unsigned int minor_sr,
        unsigned int iftype_mr, unsigned int major_mr,
        unsigned int subtype_mr, unsigned int minor_mr)
{
 wl->min_sr_fw_ver[FW_VER_CHIP] = chip;
 wl->min_sr_fw_ver[FW_VER_IF_TYPE] = iftype_sr;
 wl->min_sr_fw_ver[FW_VER_MAJOR] = major_sr;
 wl->min_sr_fw_ver[FW_VER_SUBTYPE] = subtype_sr;
 wl->min_sr_fw_ver[FW_VER_MINOR] = minor_sr;

 wl->min_mr_fw_ver[FW_VER_CHIP] = chip;
 wl->min_mr_fw_ver[FW_VER_IF_TYPE] = iftype_mr;
 wl->min_mr_fw_ver[FW_VER_MAJOR] = major_mr;
 wl->min_mr_fw_ver[FW_VER_SUBTYPE] = subtype_mr;
 wl->min_mr_fw_ver[FW_VER_MINOR] = minor_mr;
}
