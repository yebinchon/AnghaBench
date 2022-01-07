; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_rphy_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_rphy_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_rphy = type { i32, %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_host_attrs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_rphy_free(%struct.sas_rphy* %0) #0 {
  %2 = alloca %struct.sas_rphy*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_host_attrs*, align 8
  store %struct.sas_rphy* %0, %struct.sas_rphy** %2, align 8
  %6 = load %struct.sas_rphy*, %struct.sas_rphy** %2, align 8
  %7 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.sas_rphy*, %struct.sas_rphy** %2, align 8
  %9 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.Scsi_Host* @dev_to_shost(i32 %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %4, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = call %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host* %15)
  store %struct.sas_host_attrs* %16, %struct.sas_host_attrs** %5, align 8
  %17 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %5, align 8
  %18 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.sas_rphy*, %struct.sas_rphy** %2, align 8
  %21 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.sas_host_attrs*, %struct.sas_host_attrs** %5, align 8
  %24 = getelementptr inbounds %struct.sas_host_attrs, %struct.sas_host_attrs* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = load %struct.sas_rphy*, %struct.sas_rphy** %2, align 8
  %28 = call i32 @sas_bsg_remove(%struct.Scsi_Host* %26, %struct.sas_rphy* %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @transport_destroy_device(%struct.device* %29)
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @put_device(%struct.device* %31)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_host_attrs* @to_sas_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sas_bsg_remove(%struct.Scsi_Host*, %struct.sas_rphy*) #1

declare dso_local i32 @transport_destroy_device(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
