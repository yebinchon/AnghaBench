; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32* }
%struct.dasd_device = type { %struct.dasd_block*, i32 }
%struct.dasd_block = type { i32 }

@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE_RUNNING = common dso_local global i32 0, align 4
@DASD_STATE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_remove(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_block*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  store i32* null, i32** %6, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %7)
  store %struct.dasd_device* %8, %struct.dasd_device** %3, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = call i64 @IS_ERR(%struct.dasd_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 1
  %17 = call i64 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %21 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 1
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %27 = call i32 @dasd_put_device(%struct.dasd_device* %26)
  br label %45

28:                                               ; preds = %19, %13
  %29 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %30 = load i32, i32* @DASD_STATE_NEW, align 4
  %31 = call i32 @dasd_set_target_state(%struct.dasd_device* %29, i32 %30)
  %32 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 0
  %34 = load %struct.dasd_block*, %struct.dasd_block** %33, align 8
  store %struct.dasd_block* %34, %struct.dasd_block** %4, align 8
  %35 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %36 = call i32 @dasd_delete_device(%struct.dasd_device* %35)
  %37 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %38 = icmp ne %struct.dasd_block* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %41 = call i32 @dasd_free_block(%struct.dasd_block* %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %44 = call i32 @dasd_remove_sysfs_files(%struct.ccw_device* %43)
  br label %45

45:                                               ; preds = %42, %25, %12
  ret void
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_delete_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_free_block(%struct.dasd_block*) #1

declare dso_local i32 @dasd_remove_sysfs_files(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
