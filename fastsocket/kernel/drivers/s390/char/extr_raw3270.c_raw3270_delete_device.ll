; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_delete_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_delete_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { %struct.raw3270*, %struct.ccw_device*, i32, i32, i64, i64 }
%struct.ccw_device = type { i32, i32* }

@raw3270_mutex = common dso_local global i32 0, align 4
@class3270 = common dso_local global i32 0, align 4
@IBM_TTY3270_MAJOR = common dso_local global i32 0, align 4
@IBM_FS3270_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270*)* @raw3270_delete_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3270_delete_device(%struct.raw3270* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.raw3270* %0, %struct.raw3270** %2, align 8
  %4 = call i32 @mutex_lock(i32* @raw3270_mutex)
  %5 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %6 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %11 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @IS_ERR(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @class3270, align 4
  %17 = load i32, i32* @IBM_TTY3270_MAJOR, align 4
  %18 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %19 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MKDEV(i32 %17, i32 %20)
  %22 = call i32 @device_destroy(i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %15, %9, %1
  %24 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %25 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %30 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @IS_ERR(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @class3270, align 4
  %36 = load i32, i32* @IBM_FS3270_MAJOR, align 4
  %37 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %38 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MKDEV(i32 %36, i32 %39)
  %41 = call i32 @device_destroy(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %28, %23
  %43 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %44 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %43, i32 0, i32 2
  %45 = call i32 @list_del_init(i32* %44)
  %46 = call i32 @mutex_unlock(i32* @raw3270_mutex)
  %47 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %48 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %47, i32 0, i32 1
  %49 = load %struct.ccw_device*, %struct.ccw_device** %48, align 8
  store %struct.ccw_device* %49, %struct.ccw_device** %3, align 8
  %50 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %51 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %50, i32 0, i32 1
  store %struct.ccw_device* null, %struct.ccw_device** %51, align 8
  %52 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %53 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %52, i32 0, i32 0
  %54 = call i32 @dev_set_drvdata(i32* %53, i32* null)
  %55 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %56 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %58 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %57, i32 0, i32 0
  %59 = call i32 @put_device(i32* %58)
  %60 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %61 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %60, i32 0, i32 0
  %62 = load %struct.raw3270*, %struct.raw3270** %61, align 8
  %63 = call i32 @kfree(%struct.raw3270* %62)
  %64 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %65 = call i32 @kfree(%struct.raw3270* %64)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @kfree(%struct.raw3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
