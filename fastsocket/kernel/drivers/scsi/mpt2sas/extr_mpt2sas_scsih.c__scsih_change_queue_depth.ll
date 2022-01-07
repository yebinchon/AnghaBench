; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32*, i32, i32, i32, i32, %struct.MPT2SAS_DEVICE*, %struct.Scsi_Host* }
%struct.MPT2SAS_DEVICE = type { %struct.MPT2SAS_TARGET* }
%struct.MPT2SAS_TARGET = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT2SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i32 }

@SCSI_QDEPTH_DEFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@MPT2SAS_SATA_QUEUE_DEPTH = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"qdepth(%d), tagged(%d), simple(%d), ordered(%d), scsi_level(%d), cmd_que(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i32)* @_scsih_change_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_change_queue_depth(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %12 = alloca %struct.MPT2SAS_DEVICE*, align 8
  %13 = alloca %struct.MPT2SAS_TARGET*, align 8
  %14 = alloca %struct._sas_device*, align 8
  %15 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %8, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %20 = call %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.MPT2SAS_ADAPTER* %20, %struct.MPT2SAS_ADAPTER** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SCSI_QDEPTH_DEFAULT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %138

27:                                               ; preds = %3
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 7
  %33 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %32, align 8
  store %struct.MPT2SAS_DEVICE* %33, %struct.MPT2SAS_DEVICE** %12, align 8
  %34 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %12, align 8
  %35 = icmp ne %struct.MPT2SAS_DEVICE* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %80

37:                                               ; preds = %27
  %38 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %12, align 8
  %39 = getelementptr inbounds %struct.MPT2SAS_DEVICE, %struct.MPT2SAS_DEVICE* %38, i32 0, i32 0
  %40 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %39, align 8
  store %struct.MPT2SAS_TARGET* %40, %struct.MPT2SAS_TARGET** %13, align 8
  %41 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %13, align 8
  %42 = icmp ne %struct.MPT2SAS_TARGET* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %80

44:                                               ; preds = %37
  %45 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %13, align 8
  %46 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %80

52:                                               ; preds = %44
  %53 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %11, align 8
  %54 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %53, i32 0, i32 0
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %11, align 8
  %58 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %12, align 8
  %59 = getelementptr inbounds %struct.MPT2SAS_DEVICE, %struct.MPT2SAS_DEVICE* %58, i32 0, i32 0
  %60 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %59, align 8
  %61 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER* %57, i32 %62)
  store %struct._sas_device* %63, %struct._sas_device** %14, align 8
  %64 = load %struct._sas_device*, %struct._sas_device** %14, align 8
  %65 = icmp ne %struct._sas_device* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = load %struct._sas_device*, %struct._sas_device** %14, align 8
  %68 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MPI2_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @MPT2SAS_SATA_QUEUE_DEPTH, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %66, %52
  %76 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %11, align 8
  %77 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %76, i32 0, i32 0
  %78 = load i64, i64* %15, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %51, %43, %36
  %81 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %82 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  br label %98

98:                                               ; preds = %96, %95
  %99 = phi i32 [ 0, %95 ], [ %97, %96 ]
  store i32 %99, i32* %10, align 4
  %100 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %100, i32 %101, i32 %102)
  %104 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %105 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 7
  br i1 %107, label %108, label %134

108:                                              ; preds = %98
  %109 = load i32, i32* @KERN_INFO, align 4
  %110 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %111 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %112 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %118 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %121 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %124 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %127 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 7
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 2
  %132 = ashr i32 %131, 1
  %133 = call i32 @sdev_printk(i32 %109, %struct.scsi_device* %110, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i32 %122, i32 %125, i32 %132)
  br label %134

134:                                              ; preds = %108, %98
  %135 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %136 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %24
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
