
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef void* u16 ;
struct TYPE_5__ {int adrController; } ;
struct TYPE_6__ {TYPE_1__ adr; void* Messagenumber; void* Subcommand; void* Command; void* ApplId; } ;
typedef TYPE_2__ _cmsg ;


 int memset (TYPE_2__*,int ,int) ;

unsigned capi_cmsg_header(_cmsg * cmsg, u16 _ApplId,
     u8 _Command, u8 _Subcommand,
     u16 _Messagenumber, u32 _Controller)
{
 memset(cmsg, 0, sizeof(_cmsg));
 cmsg->ApplId = _ApplId;
 cmsg->Command = _Command;
 cmsg->Subcommand = _Subcommand;
 cmsg->Messagenumber = _Messagenumber;
 cmsg->adr.adrController = _Controller;
 return 0;
}
