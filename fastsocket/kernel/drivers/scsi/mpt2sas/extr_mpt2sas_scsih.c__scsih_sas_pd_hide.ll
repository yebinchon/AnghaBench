; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_sas_pd_hide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_sas_pd_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct._sas_device = type { i32, i64, %struct.scsi_target* }
%struct.scsi_target = type { %struct.MPT2SAS_TARGET* }
%struct.MPT2SAS_TARGET = type { i32 }

@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@_scsih_reprobe_lun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT2SAS_ADAPTER*, %struct.TYPE_3__*)* @_scsih_sas_pd_hide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_sas_pd_hide(%struct.MPT2SAS_ADAPTER* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca %struct.scsi_target*, align 8
  %7 = alloca %struct.MPT2SAS_TARGET*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store %struct.scsi_target* null, %struct.scsi_target** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @mpt2sas_config_get_volume_handle(%struct.MPT2SAS_ADAPTER* %16, i64 %17, i64* %10)
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @mpt2sas_config_get_volume_wwid(%struct.MPT2SAS_ADAPTER* %22, i64 %23, i32* %11)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %27 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call %struct._sas_device* @_scsih_sas_device_find_by_handle(%struct.MPT2SAS_ADAPTER* %30, i64 %31)
  store %struct._sas_device* %32, %struct._sas_device** %5, align 8
  %33 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %34 = icmp ne %struct._sas_device* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %25
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %38 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_bit(i64 %36, i32 %39)
  %41 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %42 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %41, i32 0, i32 2
  %43 = load %struct.scsi_target*, %struct.scsi_target** %42, align 8
  %44 = icmp ne %struct.scsi_target* %43, null
  br i1 %44, label %45, label %70

45:                                               ; preds = %35
  %46 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %47 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %46, i32 0, i32 2
  %48 = load %struct.scsi_target*, %struct.scsi_target** %47, align 8
  %49 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %48, i32 0, i32 0
  %50 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %49, align 8
  %51 = icmp ne %struct.MPT2SAS_TARGET* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %54 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %53, i32 0, i32 2
  %55 = load %struct.scsi_target*, %struct.scsi_target** %54, align 8
  store %struct.scsi_target* %55, %struct.scsi_target** %6, align 8
  %56 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %57 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %56, i32 0, i32 0
  %58 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %57, align 8
  store %struct.MPT2SAS_TARGET* %58, %struct.MPT2SAS_TARGET** %7, align 8
  %59 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %60 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %7, align 8
  %61 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %66 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %69 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %52, %45, %35
  br label %71

71:                                               ; preds = %70, %25
  %72 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %73 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %72, i32 0, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %77 = icmp ne %struct._sas_device* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %86

79:                                               ; preds = %71
  %80 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %81 = icmp ne %struct.scsi_target* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %84 = load i32, i32* @_scsih_reprobe_lun, align 4
  %85 = call i32 @starget_for_each_device(%struct.scsi_target* %83, i8* inttoptr (i64 1 to i8*), i32 %84)
  br label %86

86:                                               ; preds = %78, %82, %79
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mpt2sas_config_get_volume_handle(%struct.MPT2SAS_ADAPTER*, i64, i64*) #1

declare dso_local i32 @mpt2sas_config_get_volume_wwid(%struct.MPT2SAS_ADAPTER*, i64, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @_scsih_sas_device_find_by_handle(%struct.MPT2SAS_ADAPTER*, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @starget_for_each_device(%struct.scsi_target*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
