; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_host_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_host_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_host_attrs = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @sas_host_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_host_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sas_host_attrs*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = call %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host* %8)
  store %struct.sas_host_attrs* %9, %struct.sas_host_attrs** %4, align 8
  %10 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %4, align 8
  %11 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %10, i32 0, i32 0
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %5, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = icmp ne %struct.request_queue* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %17 = call i32 @blk_cleanup_queue(%struct.request_queue* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
