
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vio_dev {int unit_address; } ;
struct ibmvscsi_host_data {int dev; } ;


 int H_SEND_CRQ ;
 int plpar_hcall_norets (int ,int ,int ,int ) ;
 struct vio_dev* to_vio_dev (int ) ;

__attribute__((used)) static int rpavscsi_send_crq(struct ibmvscsi_host_data *hostdata,
        u64 word1, u64 word2)
{
 struct vio_dev *vdev = to_vio_dev(hostdata->dev);

 return plpar_hcall_norets(H_SEND_CRQ, vdev->unit_address, word1, word2);
}
