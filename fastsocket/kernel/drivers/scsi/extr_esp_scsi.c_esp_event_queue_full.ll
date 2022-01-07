; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_event_queue_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_event_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.esp_cmd_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_device* }
%struct.scsi_device = type { %struct.esp_lun_data* }
%struct.esp_lun_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*)* @esp_event_queue_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_event_queue_full(%struct.esp* %0, %struct.esp_cmd_entry* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.esp_lun_data*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %4, align 8
  %7 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %8 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %5, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.esp_lun_data*, %struct.esp_lun_data** %13, align 8
  store %struct.esp_lun_data* %14, %struct.esp_lun_data** %6, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %16 = load %struct.esp_lun_data*, %struct.esp_lun_data** %6, align 8
  %17 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @scsi_track_queue_full(%struct.scsi_device* %15, i64 %19)
  ret void
}

declare dso_local i32 @scsi_track_queue_full(%struct.scsi_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
