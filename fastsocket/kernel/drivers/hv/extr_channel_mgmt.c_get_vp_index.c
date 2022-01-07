
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b; } ;
typedef TYPE_1__ uuid_le ;
typedef size_t u32 ;
struct TYPE_7__ {int guid; } ;
struct TYPE_6__ {size_t* vp_index; } ;


 int IDE ;
 int MAX_PERF_CHN ;
 scalar_t__ VERSION_WIN7 ;
 scalar_t__ VERSION_WS2008 ;
 TYPE_3__* hp_devs ;
 TYPE_2__ hv_context ;
 int memcmp (int ,int ,int) ;
 size_t next_vp ;
 size_t num_online_cpus () ;
 scalar_t__ vmbus_proto_version ;

__attribute__((used)) static u32 get_vp_index(uuid_le *type_guid)
{
 u32 cur_cpu;
 int i;
 bool perf_chn = 0;
 u32 max_cpus = num_online_cpus();

 for (i = IDE; i < MAX_PERF_CHN; i++) {
  if (!memcmp(type_guid->b, hp_devs[i].guid,
     sizeof(uuid_le))) {
   perf_chn = 1;
   break;
  }
 }
 if ((vmbus_proto_version == VERSION_WS2008) ||
     (vmbus_proto_version == VERSION_WIN7) || (!perf_chn)) {






  return 0;
 }
 cur_cpu = (++next_vp % max_cpus);
 return hv_context.vp_index[cur_cpu];
}
