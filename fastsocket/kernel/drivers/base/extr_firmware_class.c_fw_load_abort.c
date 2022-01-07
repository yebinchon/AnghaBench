
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_priv {int completion; int status; } ;


 int FW_STATUS_ABORT ;
 int complete (int *) ;
 int set_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static void
fw_load_abort(struct firmware_priv *fw_priv)
{
 set_bit(FW_STATUS_ABORT, &fw_priv->status);
 wmb();
 complete(&fw_priv->completion);
}
