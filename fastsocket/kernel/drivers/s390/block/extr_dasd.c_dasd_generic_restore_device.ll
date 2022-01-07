; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_restore_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_restore_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*)* }

@DASD_STOPPED_PM = common dso_local global i32 0, align 4
@DASD_UNRESUMED_PM = common dso_local global i32 0, align 4
@DASD_FLAG_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_restore_device(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %6)
  store %struct.dasd_device* %7, %struct.dasd_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.dasd_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.dasd_device* %12)
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = load i32, i32* @DASD_STOPPED_PM, align 4
  %17 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @dasd_device_remove_stop_bits(%struct.dasd_device* %15, i32 %18)
  %20 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %21 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %25, align 8
  %27 = icmp ne i32 (%struct.dasd_device*)* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %14
  %29 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %37, align 8
  %39 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %40 = call i32 %38(%struct.dasd_device* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %28, %14
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %46 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %51 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %62 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dasd_schedule_block_bh(i64 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @DASD_FLAG_SUSPENDED, align 4
  %67 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %68 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %67, i32 0, i32 1
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %71 = call i32 @dasd_put_device(%struct.dasd_device* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_block_bh(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
