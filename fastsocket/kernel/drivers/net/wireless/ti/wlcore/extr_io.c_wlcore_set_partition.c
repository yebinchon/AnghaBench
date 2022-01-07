
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int start; int size; } ;
struct TYPE_7__ {int size; int start; } ;
struct TYPE_6__ {int size; int start; } ;
struct TYPE_5__ {int size; int start; } ;
struct wlcore_partition_set {TYPE_4__ mem3; TYPE_3__ mem2; TYPE_2__ reg; TYPE_1__ mem; } ;
struct wl1271 {int curr_part; } ;


 int DEBUG_IO ;
 int HW_PART0_SIZE_ADDR ;
 int HW_PART0_START_ADDR ;
 int HW_PART1_SIZE_ADDR ;
 int HW_PART1_START_ADDR ;
 int HW_PART2_SIZE_ADDR ;
 int HW_PART2_START_ADDR ;
 int HW_PART3_START_ADDR ;
 int memcpy (int *,struct wlcore_partition_set const*,int) ;
 int wl1271_debug (int ,char*,int ,int ) ;
 int wlcore_raw_write32 (struct wl1271*,int ,int ) ;

int wlcore_set_partition(struct wl1271 *wl,
    const struct wlcore_partition_set *p)
{
 int ret;


 memcpy(&wl->curr_part, p, sizeof(*p));

 wl1271_debug(DEBUG_IO, "mem_start %08X mem_size %08X",
       p->mem.start, p->mem.size);
 wl1271_debug(DEBUG_IO, "reg_start %08X reg_size %08X",
       p->reg.start, p->reg.size);
 wl1271_debug(DEBUG_IO, "mem2_start %08X mem2_size %08X",
       p->mem2.start, p->mem2.size);
 wl1271_debug(DEBUG_IO, "mem3_start %08X mem3_size %08X",
       p->mem3.start, p->mem3.size);

 ret = wlcore_raw_write32(wl, HW_PART0_START_ADDR, p->mem.start);
 if (ret < 0)
  goto out;

 ret = wlcore_raw_write32(wl, HW_PART0_SIZE_ADDR, p->mem.size);
 if (ret < 0)
  goto out;

 ret = wlcore_raw_write32(wl, HW_PART1_START_ADDR, p->reg.start);
 if (ret < 0)
  goto out;

 ret = wlcore_raw_write32(wl, HW_PART1_SIZE_ADDR, p->reg.size);
 if (ret < 0)
  goto out;

 ret = wlcore_raw_write32(wl, HW_PART2_START_ADDR, p->mem2.start);
 if (ret < 0)
  goto out;

 ret = wlcore_raw_write32(wl, HW_PART2_SIZE_ADDR, p->mem2.size);
 if (ret < 0)
  goto out;






 ret = wlcore_raw_write32(wl, HW_PART3_START_ADDR, p->mem3.start);

out:
 return ret;
}
