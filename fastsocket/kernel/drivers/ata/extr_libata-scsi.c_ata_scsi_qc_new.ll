; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_qc_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_qc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { void (%struct.scsi_cmnd*)*, i32, i32, %struct.scsi_cmnd* }
%struct.ata_device = type { i32 }
%struct.scsi_cmnd = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@QUEUE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ata_queued_cmd* (%struct.ata_device*, %struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @ata_scsi_qc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ata_queued_cmd* @ata_scsi_qc_new(%struct.ata_device* %0, %struct.scsi_cmnd* %1, void (%struct.scsi_cmnd*)* %2) #0 {
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca void (%struct.scsi_cmnd*)*, align 8
  %7 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store void (%struct.scsi_cmnd*)* %2, void (%struct.scsi_cmnd*)** %6, align 8
  %8 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %9 = call %struct.ata_queued_cmd* @ata_qc_new_init(%struct.ata_device* %8)
  store %struct.ata_queued_cmd* %9, %struct.ata_queued_cmd** %7, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %11 = icmp ne %struct.ata_queued_cmd* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 3
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %15, align 8
  %16 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %16, void (%struct.scsi_cmnd*)** %18, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = call i32 @scsi_sglist(%struct.scsi_cmnd* %19)
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %23)
  %25 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %37

27:                                               ; preds = %3
  %28 = load i32, i32* @DID_OK, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, i32* @QUEUE_FULL, align 4
  %31 = shl i32 %30, 1
  %32 = or i32 %29, %31
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %6, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  call void %35(%struct.scsi_cmnd* %36)
  br label %37

37:                                               ; preds = %27, %12
  %38 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  ret %struct.ata_queued_cmd* %38
}

declare dso_local %struct.ata_queued_cmd* @ata_qc_new_init(%struct.ata_device*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
