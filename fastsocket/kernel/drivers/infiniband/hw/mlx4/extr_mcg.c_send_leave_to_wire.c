
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ib_sa_mcmember_data {int scope_join_state; } ;
struct mcast_group {int timeout_work; TYPE_3__* demux; int state; struct ib_sa_mcmember_data rec; int last_req_tid; } ;
struct TYPE_6__ {int sm_key; int comp_mask; void* attr_offset; } ;
struct TYPE_5__ {int base_version; int class_version; int attr_mod; void* attr_id; int tid; void* class_specific; void* status; int method; int mgmt_class; } ;
struct ib_sa_mad {TYPE_2__ sa_hdr; TYPE_1__ mad_hdr; int data; } ;
struct ib_mad {int dummy; } ;
struct TYPE_7__ {int mcg_wq; } ;


 int IB_MGMT_CLASS_SUBN_ADM ;
 int IB_SA_ATTR_MC_MEMBER_REC ;
 int IB_SA_MCMEMBER_REC_JOIN_STATE ;
 int IB_SA_MCMEMBER_REC_MGID ;
 int IB_SA_MCMEMBER_REC_PORT_GID ;
 int IB_SA_METHOD_DELETE ;
 int MAD_TIMEOUT_MS ;
 int MCAST_IDLE ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int memset (struct ib_sa_mad*,int ,int) ;
 int mlx4_ib_get_new_demux_tid (TYPE_3__*) ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int send_mad_to_wire (TYPE_3__*,struct ib_mad*) ;

__attribute__((used)) static int send_leave_to_wire(struct mcast_group *group, u8 join_state)
{
 struct ib_sa_mad mad;
 struct ib_sa_mcmember_data *sa_data = (struct ib_sa_mcmember_data *)&mad.data;
 int ret;

 memset(&mad, 0, sizeof mad);
 mad.mad_hdr.base_version = 1;
 mad.mad_hdr.mgmt_class = IB_MGMT_CLASS_SUBN_ADM;
 mad.mad_hdr.class_version = 2;
 mad.mad_hdr.method = IB_SA_METHOD_DELETE;
 mad.mad_hdr.status = cpu_to_be16(0);
 mad.mad_hdr.class_specific = cpu_to_be16(0);
 mad.mad_hdr.tid = mlx4_ib_get_new_demux_tid(group->demux);
 group->last_req_tid = mad.mad_hdr.tid;
 mad.mad_hdr.attr_id = cpu_to_be16(IB_SA_ATTR_MC_MEMBER_REC);
 mad.mad_hdr.attr_mod = cpu_to_be32(0);
 mad.sa_hdr.sm_key = 0x0;
 mad.sa_hdr.attr_offset = cpu_to_be16(7);
 mad.sa_hdr.comp_mask = IB_SA_MCMEMBER_REC_MGID |
  IB_SA_MCMEMBER_REC_PORT_GID | IB_SA_MCMEMBER_REC_JOIN_STATE;

 *sa_data = group->rec;
 sa_data->scope_join_state = join_state;

 ret = send_mad_to_wire(group->demux, (struct ib_mad *)&mad);
 if (ret)
  group->state = MCAST_IDLE;


 if (!ret) {

  queue_delayed_work(group->demux->mcg_wq, &group->timeout_work,
    msecs_to_jiffies(MAD_TIMEOUT_MS));
 }

 return ret;
}
