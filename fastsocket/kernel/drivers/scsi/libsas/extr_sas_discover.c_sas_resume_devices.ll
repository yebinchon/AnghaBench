; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_resume_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_resume_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.sas_discovery_event = type { %struct.asd_sas_port* }
%struct.asd_sas_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DISCE_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_resume_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_resume_devices(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.sas_discovery_event*, align 8
  %4 = alloca %struct.asd_sas_port*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct* %5)
  store %struct.sas_discovery_event* %6, %struct.sas_discovery_event** %3, align 8
  %7 = load %struct.sas_discovery_event*, %struct.sas_discovery_event** %3, align 8
  %8 = getelementptr inbounds %struct.sas_discovery_event, %struct.sas_discovery_event* %7, i32 0, i32 0
  %9 = load %struct.asd_sas_port*, %struct.asd_sas_port** %8, align 8
  store %struct.asd_sas_port* %9, %struct.asd_sas_port** %4, align 8
  %10 = load i32, i32* @DISCE_RESUME, align 4
  %11 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %12 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @clear_bit(i32 %10, i32* %13)
  %15 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %16 = call i32 @sas_resume_sata(%struct.asd_sas_port* %15)
  ret void
}

declare dso_local %struct.sas_discovery_event* @to_sas_discovery_event(%struct.work_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sas_resume_sata(%struct.asd_sas_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
