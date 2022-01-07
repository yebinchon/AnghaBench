
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int status; } ;
typedef enum MCA_AdapterStatus { ____Placeholder_MCA_AdapterStatus } MCA_AdapterStatus ;



enum MCA_AdapterStatus mca_device_status(struct mca_device *mca_dev)
{
 return mca_dev->status;
}
