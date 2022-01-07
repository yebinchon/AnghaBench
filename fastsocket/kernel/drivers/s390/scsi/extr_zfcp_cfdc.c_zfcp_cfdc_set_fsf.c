
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_cfdc {int option; void* command; } ;


 int EINVAL ;
 int FSF_CFDC_OPTION_FORCE ;
 int FSF_CFDC_OPTION_FULL_ACCESS ;
 int FSF_CFDC_OPTION_NORMAL_MODE ;
 int FSF_CFDC_OPTION_RESTRICTED_ACCESS ;
 void* FSF_QTCB_DOWNLOAD_CONTROL_FILE ;
 void* FSF_QTCB_UPLOAD_CONTROL_FILE ;






__attribute__((used)) static int zfcp_cfdc_set_fsf(struct zfcp_fsf_cfdc *fsf_cfdc, int command)
{
 switch (command) {
 case 131:
  fsf_cfdc->command = FSF_QTCB_DOWNLOAD_CONTROL_FILE;
  fsf_cfdc->option = FSF_CFDC_OPTION_NORMAL_MODE;
  break;
 case 132:
  fsf_cfdc->command = FSF_QTCB_DOWNLOAD_CONTROL_FILE;
  fsf_cfdc->option = FSF_CFDC_OPTION_FORCE;
  break;
 case 130:
  fsf_cfdc->command = FSF_QTCB_DOWNLOAD_CONTROL_FILE;
  fsf_cfdc->option = FSF_CFDC_OPTION_FULL_ACCESS;
  break;
 case 129:
  fsf_cfdc->command = FSF_QTCB_DOWNLOAD_CONTROL_FILE;
  fsf_cfdc->option = FSF_CFDC_OPTION_RESTRICTED_ACCESS;
  break;
 case 128:
  fsf_cfdc->command = FSF_QTCB_UPLOAD_CONTROL_FILE;
  fsf_cfdc->option = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
