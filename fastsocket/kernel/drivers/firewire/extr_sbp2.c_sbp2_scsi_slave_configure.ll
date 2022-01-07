; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_scsi_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_scsi_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.sbp2_logical_unit* }
%struct.sbp2_logical_unit = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sbp2_param_exclusive_login = common dso_local global i64 0, align 8
@TYPE_ROM = common dso_local global i64 0, align 8
@TYPE_DISK = common dso_local global i64 0, align 8
@SBP2_WORKAROUND_MODE_SENSE_8 = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_FIX_CAPACITY = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_POWER_CONDITION = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_128K_MAX_TRANS = common dso_local global i32 0, align 4
@SBP2_MAX_SEG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @sbp2_scsi_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_scsi_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.sbp2_logical_unit*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 8
  %6 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %5, align 8
  store %struct.sbp2_logical_unit* %6, %struct.sbp2_logical_unit** %3, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i64, i64* @sbp2_param_exclusive_login, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TYPE_ROM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 3
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TYPE_DISK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %3, align 8
  %31 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SBP2_WORKAROUND_MODE_SENSE_8, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 4
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %29, %23
  %42 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %3, align 8
  %43 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SBP2_WORKAROUND_FIX_CAPACITY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 5
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %3, align 8
  %55 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SBP2_WORKAROUND_POWER_CONDITION, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 6
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %53
  %66 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %3, align 8
  %67 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SBP2_WORKAROUND_128K_MAX_TRANS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %76 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @blk_queue_max_hw_sectors(i32 %77, i32 256)
  br label %79

79:                                               ; preds = %74, %65
  %80 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %81 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SBP2_MAX_SEG_SIZE, align 4
  %84 = call i32 @blk_queue_max_segment_size(i32 %82, i32 %83)
  ret i32 0
}

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
