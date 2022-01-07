
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct enic {int dummy; } ;


 int EINVAL ;
 int ENIC_DEVCMD_PROXY_BY_INDEX (int,int,struct enic*,int ,int*) ;





 int PORT_PROFILE_RESPONSE_BADSTATE ;
 int PORT_PROFILE_RESPONSE_ERROR ;
 int PORT_PROFILE_RESPONSE_INPROGRESS ;
 int PORT_PROFILE_RESPONSE_INSUFFICIENT_RESOURCES ;
 int PORT_PROFILE_RESPONSE_INVALID ;
 int PORT_PROFILE_RESPONSE_SUCCESS ;



 int vnic_dev_deinit_done ;
 int vnic_dev_enable2_done ;

int enic_process_get_pp_request(struct enic *enic, int vf,
 int request, u16 *response)
{
 int err, status = 131;

 switch (request) {

 case 128:
 case 130:
  ENIC_DEVCMD_PROXY_BY_INDEX(vf, err, enic,
   vnic_dev_enable2_done, &status);
  break;

 case 129:
  ENIC_DEVCMD_PROXY_BY_INDEX(vf, err, enic,
   vnic_dev_deinit_done, &status);
  break;

 default:
  return -EINVAL;
 }

 if (err)
  status = err;

 switch (status) {
 case 131:
  *response = PORT_PROFILE_RESPONSE_SUCCESS;
  break;
 case 133:
  *response = PORT_PROFILE_RESPONSE_INVALID;
  break;
 case 135:
  *response = PORT_PROFILE_RESPONSE_BADSTATE;
  break;
 case 132:
  *response = PORT_PROFILE_RESPONSE_INSUFFICIENT_RESOURCES;
  break;
 case 134:
  *response = PORT_PROFILE_RESPONSE_INPROGRESS;
  break;
 default:
  *response = PORT_PROFILE_RESPONSE_ERROR;
  break;
 }

 return 0;
}
