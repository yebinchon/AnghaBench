
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8802_dev {scalar_t__ mpeg_active; } ;


 int BLACKBIRD_END_NOW ;
 int BLACKBIRD_MPEG_CAPTURE ;
 int BLACKBIRD_RAW_BITS_NONE ;
 int CX2341X_ENC_STOP_CAPTURE ;
 int blackbird_api_cmd (struct cx8802_dev*,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static int blackbird_stop_codec(struct cx8802_dev *dev)
{
 blackbird_api_cmd(dev, CX2341X_ENC_STOP_CAPTURE, 3, 0,
   BLACKBIRD_END_NOW,
   BLACKBIRD_MPEG_CAPTURE,
   BLACKBIRD_RAW_BITS_NONE
  );

 dev->mpeg_active = 0;
 return 0;
}
