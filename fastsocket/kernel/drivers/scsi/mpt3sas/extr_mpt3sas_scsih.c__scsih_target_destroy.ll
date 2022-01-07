; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_target_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_target_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i64, %struct.MPT3SAS_TARGET*, %struct.TYPE_4__ }
%struct.MPT3SAS_TARGET = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32 }
%struct._sas_device = type { i64, i64, %struct.scsi_target* }
%struct._raid_device = type { i32*, i32* }
%struct.sas_rphy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RAID_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*)* @_scsih_target_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_target_destroy(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.MPT3SAS_TARGET*, align 8
  %6 = alloca %struct._sas_device*, align 8
  %7 = alloca %struct._raid_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sas_rphy*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %10 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %10, i32 0, i32 3
  %12 = call %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %3, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.MPT3SAS_ADAPTER* %14, %struct.MPT3SAS_ADAPTER** %4, align 8
  %15 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %15, i32 0, i32 2
  %17 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %16, align 8
  store %struct.MPT3SAS_TARGET* %17, %struct.MPT3SAS_TARGET** %5, align 8
  %18 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %19 = icmp ne %struct.MPT3SAS_TARGET* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %105

21:                                               ; preds = %1
  %22 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RAID_CHANNEL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %28, i32 0, i32 1
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %33 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER* %32, i64 %35, i64 %38)
  store %struct._raid_device* %39, %struct._raid_device** %7, align 8
  %40 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %41 = icmp ne %struct._raid_device* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %27
  %43 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %44 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %46 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %27
  %48 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %49 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %48, i32 0, i32 1
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %100

52:                                               ; preds = %21
  %53 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %54 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %58 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.sas_rphy* @dev_to_rphy(i32 %60)
  store %struct.sas_rphy* %61, %struct.sas_rphy** %9, align 8
  %62 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %63 = load %struct.sas_rphy*, %struct.sas_rphy** %9, align 8
  %64 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %62, i32 %66)
  store %struct._sas_device* %67, %struct._sas_device** %6, align 8
  %68 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %69 = icmp ne %struct._sas_device* %68, null
  br i1 %69, label %70, label %95

70:                                               ; preds = %52
  %71 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %72 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %71, i32 0, i32 2
  %73 = load %struct.scsi_target*, %struct.scsi_target** %72, align 8
  %74 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %75 = icmp eq %struct.scsi_target* %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %78 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %81 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %86 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %94 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %93, i32 0, i32 2
  store %struct.scsi_target* null, %struct.scsi_target** %94, align 8
  br label %95

95:                                               ; preds = %92, %84, %76, %70, %52
  %96 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %97 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %96, i32 0, i32 0
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  br label %100

100:                                              ; preds = %95, %47
  %101 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %102 = call i32 @kfree(%struct.MPT3SAS_TARGET* %101)
  %103 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %104 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %103, i32 0, i32 2
  store %struct.MPT3SAS_TARGET* null, %struct.MPT3SAS_TARGET** %104, align 8
  br label %105

105:                                              ; preds = %100, %20
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @kfree(%struct.MPT3SAS_TARGET*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
