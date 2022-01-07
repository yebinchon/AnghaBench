
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_user_path_rec {int packet_life_time_selector; int preference; int packet_life_time; int rate; int rate_selector; int mtu; int mtu_selector; int sl; int pkey; int numb_path; int reversible; int traffic_class; int hop_limit; int flow_label; int raw_traffic; int slid; int dlid; int sgid; int dgid; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int raw; } ;
struct ib_sa_path_rec {int packet_life_time_selector; int preference; int packet_life_time; int rate; int rate_selector; int mtu; int mtu_selector; int sl; int pkey; int numb_path; int reversible; int traffic_class; int hop_limit; int flow_label; int raw_traffic; int slid; int dlid; TYPE_2__ sgid; TYPE_1__ dgid; } ;


 int memcpy (int ,int ,int) ;

void ib_copy_path_rec_from_user(struct ib_sa_path_rec *dst,
    struct ib_user_path_rec *src)
{
 memcpy(dst->dgid.raw, src->dgid, sizeof dst->dgid);
 memcpy(dst->sgid.raw, src->sgid, sizeof dst->sgid);

 dst->dlid = src->dlid;
 dst->slid = src->slid;
 dst->raw_traffic = src->raw_traffic;
 dst->flow_label = src->flow_label;
 dst->hop_limit = src->hop_limit;
 dst->traffic_class = src->traffic_class;
 dst->reversible = src->reversible;
 dst->numb_path = src->numb_path;
 dst->pkey = src->pkey;
 dst->sl = src->sl;
 dst->mtu_selector = src->mtu_selector;
 dst->mtu = src->mtu;
 dst->rate_selector = src->rate_selector;
 dst->rate = src->rate;
 dst->packet_life_time = src->packet_life_time;
 dst->preference = src->preference;
 dst->packet_life_time_selector = src->packet_life_time_selector;
}
