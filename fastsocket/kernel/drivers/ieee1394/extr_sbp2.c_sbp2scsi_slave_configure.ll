; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.sbp2_lu = type { i32 }

@sbp2_exclusive_login = common dso_local global i64 0, align 8
@TYPE_ROM = common dso_local global i64 0, align 8
@TYPE_DISK = common dso_local global i64 0, align 8
@SBP2_WORKAROUND_MODE_SENSE_8 = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_FIX_CAPACITY = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_POWER_CONDITION = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_128K_MAX_TRANS = common dso_local global i32 0, align 4
@SBP2_MAX_SEG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @sbp2scsi_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2scsi_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.sbp2_lu*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.sbp2_lu*
  store %struct.sbp2_lu* %11, %struct.sbp2_lu** %3, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i64, i64* @sbp2_exclusive_login, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TYPE_ROM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 3
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TYPE_DISK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %36 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SBP2_WORKAROUND_MODE_SENSE_8, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 4
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %34, %28
  %45 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %46 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SBP2_WORKAROUND_FIX_CAPACITY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 5
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %56 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SBP2_WORKAROUND_POWER_CONDITION, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 6
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %66 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SBP2_WORKAROUND_128K_MAX_TRANS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %73 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @blk_queue_max_hw_sectors(i32 %74, i32 256)
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %78 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SBP2_MAX_SEG_SIZE, align 4
  %81 = call i32 @blk_queue_max_segment_size(i32 %79, i32 %80)
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
