; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_target_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32, i32, %struct.TYPE_4__, %struct.MPT2SAS_TARGET* }
%struct.TYPE_4__ = type { i32 }
%struct.MPT2SAS_TARGET = type { i32, i32, i32, %struct._raid_device*, %struct.scsi_target* }
%struct._raid_device = type { %struct.scsi_target*, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT2SAS_ADAPTER = type { i32, i32, i32, i64 }
%struct._sas_device = type { i32, i32, i32, %struct.scsi_target*, i32 }
%struct.sas_rphy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPT2SAS_INVALID_DEVICE_HANDLE = common dso_local global i32 0, align 4
@RAID_CHANNEL = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @_scsih_target_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_target_alloc(%struct.scsi_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %6 = alloca %struct.MPT2SAS_TARGET*, align 8
  %7 = alloca %struct._sas_device*, align 8
  %8 = alloca %struct._raid_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sas_rphy*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  %11 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %11, i32 0, i32 2
  %13 = call %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %4, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = call %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %14)
  store %struct.MPT2SAS_ADAPTER* %15, %struct.MPT2SAS_ADAPTER** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.MPT2SAS_TARGET* @kzalloc(i32 24, i32 %16)
  store %struct.MPT2SAS_TARGET* %17, %struct.MPT2SAS_TARGET** %6, align 8
  %18 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %19 = icmp ne %struct.MPT2SAS_TARGET* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %148

23:                                               ; preds = %1
  %24 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %25 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %25, i32 0, i32 3
  store %struct.MPT2SAS_TARGET* %24, %struct.MPT2SAS_TARGET** %26, align 8
  %27 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %28 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %29 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %28, i32 0, i32 4
  store %struct.scsi_target* %27, %struct.scsi_target** %29, align 8
  %30 = load i32, i32* @MPT2SAS_INVALID_DEVICE_HANDLE, align 4
  %31 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %32 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RAID_CHANNEL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %23
  %39 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %40 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %39, i32 0, i32 2
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %44 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT2SAS_ADAPTER* %43, i32 %46, i32 %49)
  store %struct._raid_device* %50, %struct._raid_device** %8, align 8
  %51 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %52 = icmp ne %struct._raid_device* %51, null
  br i1 %52, label %53, label %81

53:                                               ; preds = %38
  %54 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %55 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %58 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %60 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %63 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %65 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %66 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %70 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %53
  %74 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %75 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %76 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %75, i32 0, i32 3
  store %struct._raid_device* %74, %struct._raid_device** %76, align 8
  br label %77

77:                                               ; preds = %73, %53
  %78 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %79 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %80 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %79, i32 0, i32 0
  store %struct.scsi_target* %78, %struct.scsi_target** %80, align 8
  br label %81

81:                                               ; preds = %77, %38
  %82 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %83 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %82, i32 0, i32 2
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  store i32 0, i32* %2, align 4
  br label %148

86:                                               ; preds = %23
  %87 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %88 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %87, i32 0, i32 0
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.sas_rphy* @dev_to_rphy(i32 %94)
  store %struct.sas_rphy* %95, %struct.sas_rphy** %10, align 8
  %96 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %97 = load %struct.sas_rphy*, %struct.sas_rphy** %10, align 8
  %98 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER* %96, i32 %100)
  store %struct._sas_device* %101, %struct._sas_device** %7, align 8
  %102 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %103 = icmp ne %struct._sas_device* %102, null
  br i1 %103, label %104, label %143

104:                                              ; preds = %86
  %105 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %106 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %109 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %111 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %114 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %116 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %117 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %116, i32 0, i32 3
  store %struct.scsi_target* %115, %struct.scsi_target** %117, align 8
  %118 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %119 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %122 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %124 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %127 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %129 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %132 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @test_bit(i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %104
  %137 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %138 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %139 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %104
  br label %143

143:                                              ; preds = %142, %86
  %144 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %145 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %144, i32 0, i32 0
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %143, %81, %20
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__*) #1

declare dso_local %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.MPT2SAS_TARGET* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT2SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
