; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_set_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.esp = type { %struct.esp_target_data* }
%struct.esp_target_data = type { i32, i32 }

@ESP_TGT_CHECK_NEGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @esp_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_set_period(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.esp*, align 8
  %7 = alloca %struct.esp_target_data*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.Scsi_Host* @dev_to_shost(i32 %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %5, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %14 = call %struct.esp* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.esp* %14, %struct.esp** %6, align 8
  %15 = load %struct.esp*, %struct.esp** %6, align 8
  %16 = getelementptr inbounds %struct.esp, %struct.esp* %15, i32 0, i32 0
  %17 = load %struct.esp_target_data*, %struct.esp_target_data** %16, align 8
  %18 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %17, i64 %20
  store %struct.esp_target_data* %21, %struct.esp_target_data** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.esp_target_data*, %struct.esp_target_data** %7, align 8
  %24 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %26 = load %struct.esp_target_data*, %struct.esp_target_data** %7, align 8
  %27 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.esp* @shost_priv(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
