
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_board {int dummy; } ;
struct falcon_nic_data {struct falcon_board board; } ;
struct efx_nic {struct falcon_nic_data* nic_data; } ;



__attribute__((used)) static inline struct falcon_board *falcon_board(struct efx_nic *efx)
{
 struct falcon_nic_data *data = efx->nic_data;
 return &data->board;
}
