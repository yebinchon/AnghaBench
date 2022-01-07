
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_tmf {int tmf_code; } ;
typedef enum isci_tmf_function_codes { ____Placeholder_isci_tmf_function_codes } isci_tmf_function_codes ;


 int memset (struct isci_tmf*,int ,int) ;

__attribute__((used)) static void isci_task_build_tmf(struct isci_tmf *tmf,
    enum isci_tmf_function_codes code)
{
 memset(tmf, 0, sizeof(*tmf));
 tmf->tmf_code = code;
}
