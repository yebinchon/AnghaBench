; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_get_clariion_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_get_clariion_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clariion_dh_data = type { i32 }
%struct.scsi_device = type { %struct.scsi_dh_data* }
%struct.scsi_dh_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clariion_dh_data* (%struct.scsi_device*)* @get_clariion_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clariion_dh_data* @get_clariion_data(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.scsi_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 0
  %6 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %5, align 8
  store %struct.scsi_dh_data* %6, %struct.scsi_dh_data** %3, align 8
  %7 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %3, align 8
  %8 = icmp eq %struct.scsi_dh_data* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.clariion_dh_data*
  ret %struct.clariion_dh_data* %14
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
