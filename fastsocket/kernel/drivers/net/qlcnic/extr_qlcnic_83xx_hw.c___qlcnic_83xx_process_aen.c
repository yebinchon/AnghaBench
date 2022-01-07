
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_hardware_context {int* mbox_aen; } ;
struct qlcnic_adapter {TYPE_1__* pdev; int idc_aen_work; int qlcnic_wq; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_CLR_OWNER ;
 int QLCNIC_FW_MBX_CTRL ;


 int QLCNIC_MBX_FW (struct qlcnic_hardware_context*,int) ;


 int QLCNIC_MBX_RSP (int ) ;



 int QLCWRX (struct qlcnic_hardware_context*,int ,int ) ;
 int QLC_83XX_MBX_AEN_CNT ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int qlcnic_83xx_handle_idc_comp_aen (struct qlcnic_adapter*,int *) ;
 int qlcnic_83xx_handle_link_aen (struct qlcnic_adapter*,int *) ;
 int qlcnic_sriov_handle_bc_event (struct qlcnic_adapter*,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int readl (int ) ;

void __qlcnic_83xx_process_aen(struct qlcnic_adapter *adapter)
{
 u32 event[QLC_83XX_MBX_AEN_CNT];
 int i;
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 for (i = 0; i < QLC_83XX_MBX_AEN_CNT; i++)
  event[i] = readl(QLCNIC_MBX_FW(ahw, i));

 switch (QLCNIC_MBX_RSP(event[0])) {

 case 132:
  qlcnic_83xx_handle_link_aen(adapter, event);
  break;
 case 133:
  qlcnic_83xx_handle_idc_comp_aen(adapter, event);
  break;
 case 131:
  for (i = 0; i < QLC_83XX_MBX_AEN_CNT; i++)
   adapter->ahw->mbox_aen[i] = QLCNIC_MBX_RSP(event[i]);
  queue_delayed_work(adapter->qlcnic_wq,
       &adapter->idc_aen_work, 0);
  break;
 case 128:
  break;
 case 134:
  qlcnic_sriov_handle_bc_event(adapter, event[1]);
  break;
 case 130:
  dev_info(&adapter->pdev->dev, "SFP+ Insert AEN:0x%x.\n",
    QLCNIC_MBX_RSP(event[0]));
  break;
 case 129:
  dev_info(&adapter->pdev->dev, "SFP Removed AEN:0x%x.\n",
    QLCNIC_MBX_RSP(event[0]));
  break;
 default:
  dev_dbg(&adapter->pdev->dev, "Unsupported AEN:0x%x.\n",
   QLCNIC_MBX_RSP(event[0]));
  break;
 }

 QLCWRX(ahw, QLCNIC_FW_MBX_CTRL, QLCNIC_CLR_OWNER);
}
