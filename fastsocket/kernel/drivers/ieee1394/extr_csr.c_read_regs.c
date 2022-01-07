
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_4__ {int state; int node_ids; int split_timeout_hi; int split_timeout_lo; int cycle_time; int bus_time; int bus_manager_id; int bandwidth_available; int channels_available_hi; int channels_available_lo; int broadcast_channel; } ;
struct hpsb_host {TYPE_2__ csr; TYPE_1__* driver; } ;
typedef int quadlet_t ;
struct TYPE_3__ {int (* devctl ) (struct hpsb_host*,int ,int ) ;int (* hw_csr_reg ) (struct hpsb_host*,int,int ,int ) ;} ;
 int CSR_REGISTER_BASE ;





 int GET_CYCLE_COUNTER ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;
 void* cpu_to_be32 (int) ;
 int out ;
 int stub1 (struct hpsb_host*,int ,int ) ;
 int stub2 (struct hpsb_host*,int ,int ) ;
 int stub3 (struct hpsb_host*,int,int ,int ) ;
 int stub4 (struct hpsb_host*,int,int ,int ) ;
 int stub5 (struct hpsb_host*,int,int ,int ) ;
 int stub6 (struct hpsb_host*,int,int ,int ) ;

__attribute__((used)) static int read_regs(struct hpsb_host *host, int nodeid, quadlet_t *buf,
                     u64 addr, size_t length, u16 flags)
{
        int csraddr = addr - CSR_REGISTER_BASE;
        int oldcycle;
        quadlet_t ret;

        if ((csraddr | length) & 0x3)
                return RCODE_TYPE_ERROR;

        length /= 4;

        switch (csraddr) {
        case 129:
                *(buf++) = cpu_to_be32(host->csr.state);
                out;
        case 128:
                *(buf++) = cpu_to_be32(host->csr.state);
                out;
        case 133:
                *(buf++) = cpu_to_be32(host->csr.node_ids);
                out;

        case 132:
                return RCODE_TYPE_ERROR;



        case 131:
                *(buf++) = cpu_to_be32(host->csr.split_timeout_hi);
                out;
        case 130:
                *(buf++) = cpu_to_be32(host->csr.split_timeout_lo);
                out;


                return RCODE_ADDRESS_ERROR;

        case 134:
                oldcycle = host->csr.cycle_time;
                host->csr.cycle_time =
                        host->driver->devctl(host, GET_CYCLE_COUNTER, 0);

                if (oldcycle > host->csr.cycle_time) {

                        host->csr.bus_time += 1 << 7;
                }
                *(buf++) = cpu_to_be32(host->csr.cycle_time);
                out;
        case 137:
                oldcycle = host->csr.cycle_time;
                host->csr.cycle_time =
                        host->driver->devctl(host, GET_CYCLE_COUNTER, 0);

                if (oldcycle > host->csr.cycle_time) {

                        host->csr.bus_time += (1 << 7);
                }
                *(buf++) = cpu_to_be32(host->csr.bus_time
                                       | (host->csr.cycle_time >> 25));
                out;


                return RCODE_ADDRESS_ERROR;

        case 139:

                return RCODE_ADDRESS_ERROR;

        case 138:
                if (host->driver->hw_csr_reg)
                        ret = host->driver->hw_csr_reg(host, 0, 0, 0);
                else
                        ret = host->csr.bus_manager_id;

                *(buf++) = cpu_to_be32(ret);
                out;
        case 141:
                if (host->driver->hw_csr_reg)
                        ret = host->driver->hw_csr_reg(host, 1, 0, 0);
                else
                        ret = host->csr.bandwidth_available;

                *(buf++) = cpu_to_be32(ret);
                out;
        case 136:
                if (host->driver->hw_csr_reg)
                        ret = host->driver->hw_csr_reg(host, 2, 0, 0);
                else
                        ret = host->csr.channels_available_hi;

                *(buf++) = cpu_to_be32(ret);
                out;
        case 135:
                if (host->driver->hw_csr_reg)
                        ret = host->driver->hw_csr_reg(host, 3, 0, 0);
                else
                        ret = host->csr.channels_available_lo;

                *(buf++) = cpu_to_be32(ret);
                out;

 case 140:
  *(buf++) = cpu_to_be32(host->csr.broadcast_channel);
  out;


        default:
                return RCODE_ADDRESS_ERROR;
        }

        return RCODE_COMPLETE;
}
