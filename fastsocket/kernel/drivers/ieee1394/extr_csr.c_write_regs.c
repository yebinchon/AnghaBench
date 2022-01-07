
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_4__ {int node_ids; int split_timeout_hi; int split_timeout_lo; int cycle_time; int bus_time; int broadcast_channel; } ;
struct hpsb_host {int node_id; TYPE_2__ csr; TYPE_1__* driver; } ;
typedef int quadlet_t ;
struct TYPE_3__ {int (* devctl ) (struct hpsb_host*,int ,int) ;} ;


 int BUS_MASK ;
 int CSR_REGISTER_BASE ;





 int NODE_MASK ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;
 int SET_BUS_ID ;
 int SET_CYCLE_COUNTER ;
 int be32_to_cpu (int ) ;
 int calculate_expire (TYPE_2__*) ;
 int out ;
 int printk (char*) ;
 int stub1 (struct hpsb_host*,int ,int) ;
 int stub2 (struct hpsb_host*,int ,int) ;

__attribute__((used)) static int write_regs(struct hpsb_host *host, int nodeid, int destid,
        quadlet_t *data, u64 addr, size_t length, u16 flags)
{
        int csraddr = addr - CSR_REGISTER_BASE;

        if ((csraddr | length) & 0x3)
                return RCODE_TYPE_ERROR;

        length /= 4;

        switch (csraddr) {
        case 129:

                printk("doh, someone wants to mess with state clear\n");
                out;
        case 128:
                printk("doh, someone wants to mess with state set\n");
                out;

        case 133:
                host->csr.node_ids &= NODE_MASK << 16;
                host->csr.node_ids |= be32_to_cpu(*(data++)) & (BUS_MASK << 16);
                host->node_id = host->csr.node_ids >> 16;
                host->driver->devctl(host, SET_BUS_ID, host->node_id >> 6);
                out;

        case 132:

                out;


                return RCODE_ADDRESS_ERROR;

        case 131:
                host->csr.split_timeout_hi =
                        be32_to_cpu(*(data++)) & 0x00000007;
  calculate_expire(&host->csr);
                out;
        case 130:
                host->csr.split_timeout_lo =
                        be32_to_cpu(*(data++)) & 0xfff80000;
  calculate_expire(&host->csr);
                out;


                return RCODE_ADDRESS_ERROR;

        case 134:

                host->csr.cycle_time = be32_to_cpu(*data);
                host->driver->devctl(host, SET_CYCLE_COUNTER,
                                       be32_to_cpu(*(data++)));
                out;
        case 137:
                host->csr.bus_time = be32_to_cpu(*(data++)) & 0xffffff80;
                out;


                return RCODE_ADDRESS_ERROR;

        case 139:

                return RCODE_ADDRESS_ERROR;

        case 138:
        case 141:
        case 136:
        case 135:

                return RCODE_TYPE_ERROR;

 case 140:

  host->csr.broadcast_channel = (host->csr.broadcast_channel & ~0x40000000)
                        | (be32_to_cpu(*data) & 0x40000000);
  out;


        default:
                return RCODE_ADDRESS_ERROR;
        }

        return RCODE_COMPLETE;
}
