
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct latency_cont {int counter; int fabric; int channel; } ;
struct TYPE_12__ {int lock; struct latency_cont cmd; struct latency_cont write; struct latency_cont read; } ;
struct zfcp_unit {TYPE_6__ latencies; } ;
struct zfcp_fsf_req {TYPE_5__* qtcb; struct zfcp_unit* unit; } ;
struct fsf_qual_latency_info {int fabric_lat; int channel_lat; } ;
struct TYPE_9__ {int data_direction; } ;
struct TYPE_10__ {TYPE_3__ io; } ;
struct TYPE_7__ {struct fsf_qual_latency_info latency_info; } ;
struct TYPE_8__ {TYPE_1__ prot_status_qual; } ;
struct TYPE_11__ {TYPE_4__ bottom; TYPE_2__ prefix; } ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zfcp_fsf_update_lat (int *,int ) ;

__attribute__((used)) static void zfcp_fsf_req_latency(struct zfcp_fsf_req *req)
{
 struct fsf_qual_latency_info *lat_inf;
 struct latency_cont *lat;
 struct zfcp_unit *unit = req->unit;

 lat_inf = &req->qtcb->prefix.prot_status_qual.latency_info;

 switch (req->qtcb->bottom.io.data_direction) {
 case 132:
 case 133:
 case 129:
  lat = &unit->latencies.read;
  break;
 case 130:
 case 131:
 case 128:
  lat = &unit->latencies.write;
  break;
 case 134:
  lat = &unit->latencies.cmd;
  break;
 default:
  return;
 }

 spin_lock(&unit->latencies.lock);
 zfcp_fsf_update_lat(&lat->channel, lat_inf->channel_lat);
 zfcp_fsf_update_lat(&lat->fabric, lat_inf->fabric_lat);
 lat->counter++;
 spin_unlock(&unit->latencies.lock);
}
