; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_adjust_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_adjust_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.MPT3SAS_DEVICE*, %struct.Scsi_Host* }
%struct.MPT3SAS_DEVICE = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i32 }

@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@MPT3SAS_SATA_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32)* @_scsih_adjust_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_adjust_queue_depth(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %8 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %9 = alloca %struct.MPT3SAS_TARGET*, align 8
  %10 = alloca %struct._sas_device*, align 8
  %11 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 2
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %5, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.MPT3SAS_ADAPTER* %16, %struct.MPT3SAS_ADAPTER** %7, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 1
  %22 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %21, align 8
  store %struct.MPT3SAS_DEVICE* %22, %struct.MPT3SAS_DEVICE** %8, align 8
  %23 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %8, align 8
  %24 = icmp ne %struct.MPT3SAS_DEVICE* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %8, align 8
  %28 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %27, i32 0, i32 0
  %29 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %28, align 8
  store %struct.MPT3SAS_TARGET* %29, %struct.MPT3SAS_TARGET** %9, align 8
  %30 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %9, align 8
  %31 = icmp ne %struct.MPT3SAS_TARGET* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %69

33:                                               ; preds = %26
  %34 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %9, align 8
  %35 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %69

41:                                               ; preds = %33
  %42 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %42, i32 0, i32 0
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %47 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %8, align 8
  %48 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %47, i32 0, i32 0
  %49 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %48, align 8
  %50 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %46, i32 %51)
  store %struct._sas_device* %52, %struct._sas_device** %10, align 8
  %53 = load %struct._sas_device*, %struct._sas_device** %10, align 8
  %54 = icmp ne %struct._sas_device* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load %struct._sas_device*, %struct._sas_device** %10, align 8
  %57 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MPI2_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @MPT3SAS_SATA_QUEUE_DEPTH, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %55, %41
  %65 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %66 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %65, i32 0, i32 0
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %40, %32, %25
  %70 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %71 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %69
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %83 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %84 = call i32 @scsi_get_tag_type(%struct.scsi_device* %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %82, i32 %84, i32 %85)
  ret void
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @scsi_get_tag_type(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
