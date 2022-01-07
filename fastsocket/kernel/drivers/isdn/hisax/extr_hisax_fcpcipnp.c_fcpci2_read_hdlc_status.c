
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritz_adapter {scalar_t__ io; } ;


 int AVM_HDLC_STATUS_1 ;
 int AVM_HDLC_STATUS_2 ;
 int inl (scalar_t__) ;

__attribute__((used)) static u32 fcpci2_read_hdlc_status(struct fritz_adapter *adapter, int nr)
{
 int offset = nr ? AVM_HDLC_STATUS_2 : AVM_HDLC_STATUS_1;

 return inl(adapter->io + offset);
}
