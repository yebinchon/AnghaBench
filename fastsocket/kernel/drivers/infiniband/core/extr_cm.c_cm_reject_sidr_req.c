
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cm_sidr_rep_param {int status; } ;
struct cm_id_private {int id; } ;
typedef enum ib_cm_sidr_status { ____Placeholder_ib_cm_sidr_status } ib_cm_sidr_status ;


 int ib_send_cm_sidr_rep (int *,struct ib_cm_sidr_rep_param*) ;
 int memset (struct ib_cm_sidr_rep_param*,int ,int) ;

__attribute__((used)) static void cm_reject_sidr_req(struct cm_id_private *cm_id_priv,
          enum ib_cm_sidr_status status)
{
 struct ib_cm_sidr_rep_param param;

 memset(&param, 0, sizeof param);
 param.status = status;
 ib_send_cm_sidr_rep(&cm_id_priv->id, &param);
}
