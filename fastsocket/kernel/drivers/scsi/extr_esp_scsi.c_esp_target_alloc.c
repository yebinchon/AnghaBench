
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {size_t id; int dev; } ;
struct esp_target_data {struct scsi_target* starget; } ;
struct esp {struct esp_target_data* target; } ;


 int dev_to_shost (int *) ;
 struct esp* shost_priv (int ) ;

__attribute__((used)) static int esp_target_alloc(struct scsi_target *starget)
{
 struct esp *esp = shost_priv(dev_to_shost(&starget->dev));
 struct esp_target_data *tp = &esp->target[starget->id];

 tp->starget = starget;

 return 0;
}
