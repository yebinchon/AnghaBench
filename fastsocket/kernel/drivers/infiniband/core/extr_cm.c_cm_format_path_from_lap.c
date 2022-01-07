
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_path_rec {int reversible; scalar_t__ packet_life_time; void* packet_life_time_selector; int rate; void* rate_selector; int mtu; void* mtu_selector; int sl; int pkey; int traffic_class; int hop_limit; int flow_label; int slid; int dlid; int sgid; int dgid; } ;
struct cm_lap_msg {int alt_hop_limit; int alt_remote_lid; int alt_local_lid; int alt_remote_gid; int alt_local_gid; } ;
struct cm_id_private {int path_mtu; int pkey; } ;


 void* IB_SA_EQ ;
 int cm_lap_get_flow_label (struct cm_lap_msg*) ;
 scalar_t__ cm_lap_get_local_ack_timeout (struct cm_lap_msg*) ;
 int cm_lap_get_packet_rate (struct cm_lap_msg*) ;
 int cm_lap_get_sl (struct cm_lap_msg*) ;
 int cm_lap_get_traffic_class (struct cm_lap_msg*) ;
 int memset (struct ib_sa_path_rec*,int ,int) ;

__attribute__((used)) static void cm_format_path_from_lap(struct cm_id_private *cm_id_priv,
        struct ib_sa_path_rec *path,
        struct cm_lap_msg *lap_msg)
{
 memset(path, 0, sizeof *path);
 path->dgid = lap_msg->alt_local_gid;
 path->sgid = lap_msg->alt_remote_gid;
 path->dlid = lap_msg->alt_local_lid;
 path->slid = lap_msg->alt_remote_lid;
 path->flow_label = cm_lap_get_flow_label(lap_msg);
 path->hop_limit = lap_msg->alt_hop_limit;
 path->traffic_class = cm_lap_get_traffic_class(lap_msg);
 path->reversible = 1;
 path->pkey = cm_id_priv->pkey;
 path->sl = cm_lap_get_sl(lap_msg);
 path->mtu_selector = IB_SA_EQ;
 path->mtu = cm_id_priv->path_mtu;
 path->rate_selector = IB_SA_EQ;
 path->rate = cm_lap_get_packet_rate(lap_msg);
 path->packet_life_time_selector = IB_SA_EQ;
 path->packet_life_time = cm_lap_get_local_ack_timeout(lap_msg);
 path->packet_life_time -= (path->packet_life_time > 0);
}
