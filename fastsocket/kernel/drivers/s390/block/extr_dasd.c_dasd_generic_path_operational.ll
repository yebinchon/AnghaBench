; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_path_operational.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_path_operational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"A channel path to the device has become operational\0A\00", align 1
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"path operational\00", align 1
@DASD_STOPPED_DC_WAIT = common dso_local global i32 0, align 4
@DASD_UNRESUMED_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_path_operational(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %5 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @dev_info(i32* %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @DBF_WARNING, align 4
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = call i32 @DBF_DEV_EVENT(i32 %9, %struct.dasd_device* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = load i32, i32* @DASD_STOPPED_DC_WAIT, align 4
  %14 = call i32 @dasd_device_remove_stop_bits(%struct.dasd_device* %12, i32 %13)
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %24 = call i32 @dasd_device_remove_stop_bits(%struct.dasd_device* %22, i32 %23)
  %25 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %26 = call i32 @dasd_restore_device(%struct.dasd_device* %25)
  store i32 1, i32* %2, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %29 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %28)
  %30 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %31 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %36 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dasd_schedule_block_bh(i64 %37)
  br label %39

39:                                               ; preds = %34, %27
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_restore_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_block_bh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
