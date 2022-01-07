; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32* }
%struct.MPT3SAS_TARGET = type { i32, i32, i32 }
%struct.scsi_target = type { i32, %struct.MPT3SAS_TARGET* }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i32* }

@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @_scsih_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.MPT3SAS_TARGET*, align 8
  %4 = alloca %struct.scsi_target*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %7 = alloca %struct._sas_device*, align 8
  %8 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %15)
  store %struct.scsi_target* %16, %struct.scsi_target** %4, align 8
  %17 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %17, i32 0, i32 1
  %19 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %18, align 8
  store %struct.MPT3SAS_TARGET* %19, %struct.MPT3SAS_TARGET** %3, align 8
  %20 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %21 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %24, i32 0, i32 0
  %26 = call %struct.Scsi_Host* @dev_to_shost(i32* %25)
  store %struct.Scsi_Host* %26, %struct.Scsi_Host** %5, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %28 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %27)
  store %struct.MPT3SAS_ADAPTER* %28, %struct.MPT3SAS_ADAPTER** %6, align 8
  %29 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %30 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %14
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %37 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %41 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %42 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %40, i32 %43)
  store %struct._sas_device* %44, %struct._sas_device** %7, align 8
  %45 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %46 = icmp ne %struct._sas_device* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %49 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %54 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %47, %35
  %56 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %57 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %56, i32 0, i32 0
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %14
  %61 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60, %13
  ret void
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
