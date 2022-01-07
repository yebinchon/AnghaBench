
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_ERROR_DATA ;
 int ehea_plpar_hcall_norets (int ,int const,int const,int ,int ,int ,int ,int ) ;
 int virt_to_abs (void*) ;

u64 ehea_h_error_data(const u64 adapter_handle, const u64 ressource_handle,
        void *rblock)
{
 return ehea_plpar_hcall_norets(H_ERROR_DATA,
           adapter_handle,
           ressource_handle,
           virt_to_abs(rblock),
           0, 0, 0, 0);
}
