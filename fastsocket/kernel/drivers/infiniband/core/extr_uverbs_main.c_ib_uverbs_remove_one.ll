; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_uverbs_device = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@uverbs_client = common dso_local global i32 0, align 4
@uverbs_class = common dso_local global i32 0, align 4
@IB_UVERBS_MAX_DEVICES = common dso_local global i64 0, align 8
@dev_map = common dso_local global i32 0, align 4
@overflow_map = common dso_local global i32 0, align 4
@ib_uverbs_release_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_uverbs_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_uverbs_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %4 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %5 = call %struct.ib_uverbs_device* @ib_get_client_data(%struct.ib_device* %4, i32* @uverbs_client)
  store %struct.ib_uverbs_device* %5, %struct.ib_uverbs_device** %3, align 8
  %6 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %7 = icmp ne %struct.ib_uverbs_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %11 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_set_drvdata(i32 %12, i32* null)
  %14 = load i32, i32* @uverbs_class, align 4
  %15 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %16 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_destroy(i32 %14, i32 %18)
  %20 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %20, i32 0, i32 3
  %22 = call i32 @cdev_del(%struct.TYPE_2__* %21)
  %23 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_UVERBS_MAX_DEVICES, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %9
  %29 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %30 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @dev_map, align 4
  %33 = call i32 @clear_bit(i64 %31, i32 %32)
  br label %42

34:                                               ; preds = %9
  %35 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %36 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IB_UVERBS_MAX_DEVICES, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i32, i32* @overflow_map, align 4
  %41 = call i32 @clear_bit(i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %43, i32 0, i32 2
  %45 = load i32, i32* @ib_uverbs_release_dev, align 4
  %46 = call i32 @kref_put(i32* %44, i32 %45)
  %47 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %48 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %47, i32 0, i32 1
  %49 = call i32 @wait_for_completion(i32* %48)
  %50 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %51 = call i32 @kfree(%struct.ib_uverbs_device* %50)
  br label %52

52:                                               ; preds = %42, %8
  ret void
}

declare dso_local %struct.ib_uverbs_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.ib_uverbs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
