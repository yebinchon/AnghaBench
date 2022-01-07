
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIO_DEBUG_ROUTE ;





 unsigned int TYPE_HOST ;
 unsigned int TYPE_RTA16 ;
 unsigned int TYPE_RTA8 ;
 int rio_dprintk (int ,char*) ;

unsigned int GetUnitType(unsigned int Uniq)
{
 switch ((Uniq >> 28) & 0xf) {
 case 133:
 case 131:
 case 132:
 case 130:
  rio_dprintk(RIO_DEBUG_ROUTE, "Unit type: Host\n");
  return (TYPE_HOST);
 case 128:
  rio_dprintk(RIO_DEBUG_ROUTE, "Unit type: 16 port RTA\n");
  return (TYPE_RTA16);
 case 129:
  rio_dprintk(RIO_DEBUG_ROUTE, "Unit type: 8 port RTA\n");
  return (TYPE_RTA8);
 default:
  rio_dprintk(RIO_DEBUG_ROUTE, "Unit type: Unrecognised\n");
  return (99);
 }
}
