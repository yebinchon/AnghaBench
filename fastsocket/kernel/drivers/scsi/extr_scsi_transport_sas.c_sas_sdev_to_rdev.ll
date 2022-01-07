; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_sdev_to_rdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_sdev_to_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_end_device = type { i32 }
%struct.scsi_device = type { i32 }
%struct.sas_rphy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SAS_END_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sas_end_device* (%struct.scsi_device*)* @sas_sdev_to_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sas_end_device* @sas_sdev_to_rdev(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.sas_rphy*, align 8
  %4 = alloca %struct.sas_end_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sas_rphy* @target_to_rphy(i32 %7)
  store %struct.sas_rphy* %8, %struct.sas_rphy** %3, align 8
  %9 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %10 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SAS_END_DEVICE, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.sas_rphy*, %struct.sas_rphy** %3, align 8
  %18 = call %struct.sas_end_device* @rphy_to_end_device(%struct.sas_rphy* %17)
  store %struct.sas_end_device* %18, %struct.sas_end_device** %4, align 8
  %19 = load %struct.sas_end_device*, %struct.sas_end_device** %4, align 8
  ret %struct.sas_end_device* %19
}

declare dso_local %struct.sas_rphy* @target_to_rphy(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sas_end_device* @rphy_to_end_device(%struct.sas_rphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
