
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sci_request_stpsata_completion_status_is_tx_rx_suspend(
 unsigned int completion_status)
{
 switch (completion_status) {
 case 133:
 case 131:
 case 132:
 case 135:
 case 134:
 case 129:
 case 128:
 case 130:
  return 1;
 }
 return 0;
}
