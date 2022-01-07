
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int revision; int gs_type; int gs_subtype; } ;
struct ct_sns_req {void* max_rsp_size; void* command; TYPE_1__ header; } ;
struct ct_sns_pkt {int dummy; } ;


 void* cpu_to_be16 (int) ;
 int memset (struct ct_sns_req*,int ,int) ;

__attribute__((used)) static inline struct ct_sns_req *
qla24xx_prep_ct_fm_req(struct ct_sns_req *ct_req, uint16_t cmd,
    uint16_t rsp_size)
{
 memset(ct_req, 0, sizeof(struct ct_sns_pkt));

 ct_req->header.revision = 0x01;
 ct_req->header.gs_type = 0xFA;
 ct_req->header.gs_subtype = 0x01;
 ct_req->command = cpu_to_be16(cmd);
 ct_req->max_rsp_size = cpu_to_be16((rsp_size - 16) / 4);

 return ct_req;
}
