
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct hpsb_host {int dummy; } ;
typedef int quadlet_t ;




 int CSR_REGISTER_BASE ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;
 int highlevel_fcp_request (struct hpsb_host*,int,int,int *,size_t) ;

__attribute__((used)) static int write_fcp(struct hpsb_host *host, int nodeid, int dest,
       quadlet_t *data, u64 addr, size_t length, u16 flags)
{
        int csraddr = addr - CSR_REGISTER_BASE;

        if (length > 512)
                return RCODE_TYPE_ERROR;

        switch (csraddr) {
        case 129:
                highlevel_fcp_request(host, nodeid, 0, (u8 *)data, length);
                break;
        case 128:
                highlevel_fcp_request(host, nodeid, 1, (u8 *)data, length);
                break;
        default:
                return RCODE_TYPE_ERROR;
        }

        return RCODE_COMPLETE;
}
