; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, %struct.lpfc_rport_data*, %struct.TYPE_2__* }
%struct.lpfc_rport_data = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_change_queue_depth(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_rport_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %7, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %8, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %26 = call i32 @scsi_get_tag_type(%struct.scsi_device* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %24, i32 %26, i32 %27)
  %29 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 2
  %34 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %33, align 8
  store %struct.lpfc_rport_data* %34, %struct.lpfc_rport_data** %9, align 8
  %35 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %9, align 8
  %36 = icmp ne %struct.lpfc_rport_data* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %3
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %40 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %9, align 8
  %41 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @lpfc_send_sdev_queuedepth_change_event(%struct.lpfc_hba* %38, %struct.lpfc_vport* %39, i32 %42, i32 %45, i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %37, %3
  %50 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @scsi_get_tag_type(%struct.scsi_device*) #1

declare dso_local i32 @lpfc_send_sdev_queuedepth_change_event(%struct.lpfc_hba*, %struct.lpfc_vport*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
