; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_bsg_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_bsg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sas_rphy = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.TYPE_2__ = type { %struct.request_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.sas_rphy*)* @sas_bsg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_bsg_remove(%struct.Scsi_Host* %0, %struct.sas_rphy* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sas_rphy*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.sas_rphy* %1, %struct.sas_rphy** %4, align 8
  %6 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %7 = icmp ne %struct.sas_rphy* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %10 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %9, i32 0, i32 0
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %5, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call %struct.TYPE_2__* @to_sas_host_attrs(%struct.Scsi_Host* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %5, align 8
  br label %17

17:                                               ; preds = %12, %8
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = icmp ne %struct.request_queue* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %24

21:                                               ; preds = %17
  %22 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %23 = call i32 @bsg_unregister_queue(%struct.request_queue* %22)
  br label %24

24:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.TYPE_2__* @to_sas_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @bsg_unregister_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
