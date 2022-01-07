; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_start_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_6__, {}*, %struct.scsi_device* }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.fib = type { i32 }
%struct.aac_power_management = type { i8*, i8*, i8*, i8*, i8* }
%struct.aac_dev = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AAC_OPTION_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@VM_ContainerConfig = common dso_local global i32 0, align 4
@CT_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@CT_PM_START_UNIT = common dso_local global i32 0, align 4
@CT_PM_STOP_UNIT = common dso_local global i32 0, align 4
@CT_PM_UNIT_IMMEDIATE = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@aac_start_stop_callback = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@AAC_OWNER_FIRMWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aac_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_start_stop(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib*, align 8
  %6 = alloca %struct.aac_power_management*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.aac_dev*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 4
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %7, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.aac_dev*
  store %struct.aac_dev* %17, %struct.aac_dev** %8, align 8
  %18 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %19 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AAC_OPTION_POWER_MANAGEMENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @DID_OK, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* @COMMAND_COMPLETE, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load i32, i32* @SAM_STAT_GOOD, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 3
  %37 = bitcast {}** %36 to i32 (%struct.scsi_cmnd*)**
  %38 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %37, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = call i32 %38(%struct.scsi_cmnd* %39)
  store i32 0, i32* %2, align 4
  br label %128

41:                                               ; preds = %1
  %42 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %47, i32* %2, align 4
  br label %128

48:                                               ; preds = %41
  %49 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %50 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %49)
  store %struct.fib* %50, %struct.fib** %5, align 8
  %51 = load %struct.fib*, %struct.fib** %5, align 8
  %52 = icmp ne %struct.fib* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %54, i32* %2, align 4
  br label %128

55:                                               ; preds = %48
  %56 = load %struct.fib*, %struct.fib** %5, align 8
  %57 = call i32 @aac_fib_init(%struct.fib* %56)
  %58 = load %struct.fib*, %struct.fib** %5, align 8
  %59 = call %struct.aac_power_management* @fib_data(%struct.fib* %58)
  store %struct.aac_power_management* %59, %struct.aac_power_management** %6, align 8
  %60 = load i32, i32* @VM_ContainerConfig, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %63 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @CT_POWER_MANAGEMENT, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %67 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %55
  %76 = load i32, i32* @CT_PM_START_UNIT, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  br label %81

78:                                               ; preds = %55
  %79 = load i32, i32* @CT_PM_STOP_UNIT, align 4
  %80 = call i8* @cpu_to_le32(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i8* [ %77, %75 ], [ %80, %78 ]
  %83 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %84 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %86 = call i32 @sdev_id(%struct.scsi_device* %85)
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %89 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %81
  %98 = load i32, i32* @CT_PM_UNIT_IMMEDIATE, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  br label %101

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i8* [ %99, %97 ], [ null, %100 ]
  %103 = load %struct.aac_power_management*, %struct.aac_power_management** %6, align 8
  %104 = getelementptr inbounds %struct.aac_power_management, %struct.aac_power_management* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @ContainerCommand, align 4
  %106 = load %struct.fib*, %struct.fib** %5, align 8
  %107 = load i32, i32* @FsaNormal, align 4
  %108 = load i64, i64* @aac_start_stop_callback, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %111 = bitcast %struct.scsi_cmnd* %110 to i8*
  %112 = call i32 @aac_fib_send(i32 %105, %struct.fib* %106, i32 40, i32 %107, i32 0, i32 1, i32 %109, i8* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @EINPROGRESS, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %101
  %118 = load i32, i32* @AAC_OWNER_FIRMWARE, align 4
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  store i32 0, i32* %2, align 4
  br label %128

122:                                              ; preds = %101
  %123 = load %struct.fib*, %struct.fib** %5, align 8
  %124 = call i32 @aac_fib_complete(%struct.fib* %123)
  %125 = load %struct.fib*, %struct.fib** %5, align 8
  %126 = call i32 @aac_fib_free(%struct.fib* %125)
  %127 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %122, %117, %53, %46, %25
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local %struct.aac_power_management* @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sdev_id(%struct.scsi_device*) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
