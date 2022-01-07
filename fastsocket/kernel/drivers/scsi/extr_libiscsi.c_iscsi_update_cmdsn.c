
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_nopin {int max_cmdsn; int exp_cmdsn; } ;


 int __iscsi_update_cmdsn (struct iscsi_session*,int ,int ) ;
 int be32_to_cpu (int ) ;

void iscsi_update_cmdsn(struct iscsi_session *session, struct iscsi_nopin *hdr)
{
 __iscsi_update_cmdsn(session, be32_to_cpu(hdr->exp_cmdsn),
        be32_to_cpu(hdr->max_cmdsn));
}
