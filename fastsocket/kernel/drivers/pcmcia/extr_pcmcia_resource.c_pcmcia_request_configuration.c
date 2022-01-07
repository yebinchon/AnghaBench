
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_14__ {int flags; scalar_t__ io_irq; int Vpp; } ;
struct TYPE_18__ {scalar_t__ AssignedIRQ; } ;
struct pcmcia_socket {int state; int functions; TYPE_3__* io; TYPE_5__* ops; int lock_count; TYPE_11__ socket; TYPE_4__ irq; int dev; } ;
struct pcmcia_device {int _locked; TYPE_8__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_21__ {int map; int stop; int start; int flags; int speed; } ;
typedef TYPE_7__ pccard_io_map ;
struct TYPE_15__ {int BasePort1; int NumPorts1; int NumPorts2; } ;
struct TYPE_20__ {int Attributes; } ;
struct TYPE_22__ {int state; int IntType; int Attributes; int ConfigBase; int CardValues; int Copy; int Option; int Status; int Pin; int ExtStatus; TYPE_1__ io; TYPE_6__ irq; } ;
typedef TYPE_8__ config_t ;
struct TYPE_23__ {int IntType; int Attributes; int ConfigBase; int Present; int Copy; int ConfigIndex; int Status; int Pin; int ExtStatus; int Vpp; } ;
typedef TYPE_9__ config_req_t ;
struct TYPE_19__ {int (* set_io_map ) (struct pcmcia_socket*,TYPE_7__*) ;scalar_t__ (* set_socket ) (struct pcmcia_socket*,TYPE_11__*) ;} ;
struct TYPE_17__ {int Config; TYPE_2__* res; } ;
struct TYPE_16__ {int flags; int end; int start; } ;


 int CISREG_CCSR ;
 int CISREG_COR ;
 int CISREG_ESR ;
 int CISREG_IOBASE_0 ;
 int CISREG_IOBASE_1 ;
 int CISREG_IOSIZE ;
 int CISREG_PRR ;
 int CISREG_SCR ;
 int CONFIG_IO_REQ ;
 int CONFIG_IRQ_REQ ;
 int CONFIG_LOCKED ;
 int CONF_ENABLE_DMA ;
 int CONF_ENABLE_IRQ ;
 int CONF_ENABLE_SPKR ;
 int COR_ADDR_DECODE ;
 int COR_CONFIG_MASK ;
 int COR_FUNC_ENA ;
 int COR_IREQ_ENA ;
 int COR_LEVEL_REQ ;
 int COR_MFC_CONFIG_MASK ;
 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 int INT_CARDBUS ;
 int INT_MEMORY_AND_IO ;
 int INT_ZOOMED_VIDEO ;
 int IO_DATA_PATH_WIDTH ;


 int IRQ_FORCED_PULSE ;
 int KERN_WARNING ;
 int MAP_16BIT ;
 int MAP_ACTIVE ;
 int MAP_AUTOSZ ;
 int MAX_IO_WIN ;
 int PRESENT_COPY ;
 int PRESENT_EXT_STATUS ;
 int PRESENT_IOBASE_0 ;
 int PRESENT_IOSIZE ;
 int PRESENT_OPTION ;
 int PRESENT_PIN_REPLACE ;
 int PRESENT_STATUS ;
 int SOCKET_PRESENT ;
 int SS_DMA_MODE ;
 int SS_IOCARD ;
 int SS_SPKR_ENA ;
 int SS_ZVCARD ;
 int dev_printk (int ,int *,char*) ;
 int ds_dbg (struct pcmcia_socket*,int ,char*) ;
 int io_speed ;
 int mdelay (int) ;
 int pcmcia_write_cis_mem (struct pcmcia_socket*,int,int,int,int*) ;
 scalar_t__ stub1 (struct pcmcia_socket*,TYPE_11__*) ;
 scalar_t__ stub2 (struct pcmcia_socket*,TYPE_11__*) ;
 int stub3 (struct pcmcia_socket*,TYPE_7__*) ;

int pcmcia_request_configuration(struct pcmcia_device *p_dev,
     config_req_t *req)
{
 int i;
 u_int base;
 struct pcmcia_socket *s = p_dev->socket;
 config_t *c;
 pccard_io_map iomap;

 if (!(s->state & SOCKET_PRESENT))
  return -ENODEV;

 if (req->IntType & INT_CARDBUS) {
  ds_dbg(p_dev->socket, 0, "IntType may not be INT_CARDBUS\n");
  return -EINVAL;
 }
 c = p_dev->function_config;
 if (c->state & CONFIG_LOCKED)
  return -EACCES;


 s->socket.Vpp = req->Vpp;
 if (s->ops->set_socket(s, &s->socket)) {
  dev_printk(KERN_WARNING, &s->dev,
      "Unable to set socket state\n");
  return -EINVAL;
 }


 c->IntType = req->IntType;
 c->Attributes = req->Attributes;
 if (req->IntType & INT_MEMORY_AND_IO)
  s->socket.flags |= SS_IOCARD;
 if (req->IntType & INT_ZOOMED_VIDEO)
  s->socket.flags |= SS_ZVCARD | SS_IOCARD;
 if (req->Attributes & CONF_ENABLE_DMA)
  s->socket.flags |= SS_DMA_MODE;
 if (req->Attributes & CONF_ENABLE_SPKR)
  s->socket.flags |= SS_SPKR_ENA;
 if (req->Attributes & CONF_ENABLE_IRQ)
  s->socket.io_irq = s->irq.AssignedIRQ;
 else
  s->socket.io_irq = 0;
 s->ops->set_socket(s, &s->socket);
 s->lock_count++;


 base = c->ConfigBase = req->ConfigBase;
 c->CardValues = req->Present;
 if (req->Present & PRESENT_COPY) {
  c->Copy = req->Copy;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_SCR)>>1, 1, &c->Copy);
 }
 if (req->Present & PRESENT_OPTION) {
  if (s->functions == 1) {
   c->Option = req->ConfigIndex & COR_CONFIG_MASK;
  } else {
   c->Option = req->ConfigIndex & COR_MFC_CONFIG_MASK;
   c->Option |= COR_FUNC_ENA|COR_IREQ_ENA;
   if (req->Present & PRESENT_IOBASE_0)
    c->Option |= COR_ADDR_DECODE;
  }
  if (c->state & CONFIG_IRQ_REQ)
   if (!(c->irq.Attributes & IRQ_FORCED_PULSE))
    c->Option |= COR_LEVEL_REQ;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_COR)>>1, 1, &c->Option);
  mdelay(40);
 }
 if (req->Present & PRESENT_STATUS) {
  c->Status = req->Status;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_CCSR)>>1, 1, &c->Status);
 }
 if (req->Present & PRESENT_PIN_REPLACE) {
  c->Pin = req->Pin;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_PRR)>>1, 1, &c->Pin);
 }
 if (req->Present & PRESENT_EXT_STATUS) {
  c->ExtStatus = req->ExtStatus;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_ESR)>>1, 1, &c->ExtStatus);
 }
 if (req->Present & PRESENT_IOBASE_0) {
  u_char b = c->io.BasePort1 & 0xff;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_IOBASE_0)>>1, 1, &b);
  b = (c->io.BasePort1 >> 8) & 0xff;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_IOBASE_1)>>1, 1, &b);
 }
 if (req->Present & PRESENT_IOSIZE) {
  u_char b = c->io.NumPorts1 + c->io.NumPorts2 - 1;
  pcmcia_write_cis_mem(s, 1, (base + CISREG_IOSIZE)>>1, 1, &b);
 }


 if (c->state & CONFIG_IO_REQ) {
  iomap.speed = io_speed;
  for (i = 0; i < MAX_IO_WIN; i++)
   if (s->io[i].res) {
    iomap.map = i;
    iomap.flags = MAP_ACTIVE;
    switch (s->io[i].res->flags & IO_DATA_PATH_WIDTH) {
    case 129:
     iomap.flags |= MAP_16BIT; break;
    case 128:
     iomap.flags |= MAP_AUTOSZ; break;
    default:
     break;
    }
    iomap.start = s->io[i].res->start;
    iomap.stop = s->io[i].res->end;
    s->ops->set_io_map(s, &iomap);
    s->io[i].Config++;
   }
 }

 c->state |= CONFIG_LOCKED;
 p_dev->_locked = 1;
 return 0;
}
