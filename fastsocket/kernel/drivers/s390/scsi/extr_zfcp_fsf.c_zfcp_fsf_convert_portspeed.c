
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FC_PORTSPEED_10GBIT ;
 int FC_PORTSPEED_16GBIT ;
 int FC_PORTSPEED_1GBIT ;
 int FC_PORTSPEED_2GBIT ;
 int FC_PORTSPEED_4GBIT ;
 int FC_PORTSPEED_8GBIT ;
 int FC_PORTSPEED_NOT_NEGOTIATED ;
 int ZFCP_FSF_PORTSPEED_10GBIT ;
 int ZFCP_FSF_PORTSPEED_16GBIT ;
 int ZFCP_FSF_PORTSPEED_1GBIT ;
 int ZFCP_FSF_PORTSPEED_2GBIT ;
 int ZFCP_FSF_PORTSPEED_4GBIT ;
 int ZFCP_FSF_PORTSPEED_8GBIT ;
 int ZFCP_FSF_PORTSPEED_NOT_NEGOTIATED ;

__attribute__((used)) static u32 zfcp_fsf_convert_portspeed(u32 fsf_speed)
{
 u32 fdmi_speed = 0;
 if (fsf_speed & ZFCP_FSF_PORTSPEED_1GBIT)
  fdmi_speed |= FC_PORTSPEED_1GBIT;
 if (fsf_speed & ZFCP_FSF_PORTSPEED_2GBIT)
  fdmi_speed |= FC_PORTSPEED_2GBIT;
 if (fsf_speed & ZFCP_FSF_PORTSPEED_4GBIT)
  fdmi_speed |= FC_PORTSPEED_4GBIT;
 if (fsf_speed & ZFCP_FSF_PORTSPEED_10GBIT)
  fdmi_speed |= FC_PORTSPEED_10GBIT;
 if (fsf_speed & ZFCP_FSF_PORTSPEED_8GBIT)
  fdmi_speed |= FC_PORTSPEED_8GBIT;
 if (fsf_speed & ZFCP_FSF_PORTSPEED_16GBIT)
  fdmi_speed |= FC_PORTSPEED_16GBIT;
 if (fsf_speed & ZFCP_FSF_PORTSPEED_NOT_NEGOTIATED)
  fdmi_speed |= FC_PORTSPEED_NOT_NEGOTIATED;
 return fdmi_speed;
}
