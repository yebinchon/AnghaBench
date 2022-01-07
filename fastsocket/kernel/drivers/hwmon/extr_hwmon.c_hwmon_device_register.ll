; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_hwmon.c_hwmon_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_hwmon.c_hwmon_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@hwmon_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@idr_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@hwmon_class = common dso_local global i32 0, align 4
@HWMON_ID_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @hwmon_device_register(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i64 @idr_pre_get(i32* @hwmon_idr, i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.device* @ERR_PTR(i32 %16)
  store %struct.device* %17, %struct.device** %2, align 8
  br label %58

18:                                               ; preds = %7
  %19 = call i32 @spin_lock(i32* @idr_lock)
  %20 = call i32 @idr_get_new(i32* @hwmon_idr, i32* null, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = call i32 @spin_unlock(i32* @idr_lock)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %7

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.device* @ERR_PTR(i32 %35)
  store %struct.device* %36, %struct.device** %2, align 8
  br label %58

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MAX_ID_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @hwmon_class, align 4
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 @MKDEV(i32 0, i32 0)
  %45 = load i32, i32* @HWMON_ID_FORMAT, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.device* @device_create(i32 %42, %struct.device* %43, i32 %44, i32* null, i32 %45, i32 %46)
  store %struct.device* %47, %struct.device** %4, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i64 @IS_ERR(%struct.device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = call i32 @spin_lock(i32* @idr_lock)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @idr_remove(i32* @hwmon_idr, i32 %53)
  %55 = call i32 @spin_unlock(i32* @idr_lock)
  br label %56

56:                                               ; preds = %51, %38
  %57 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %57, %struct.device** %2, align 8
  br label %58

58:                                               ; preds = %56, %34, %14
  %59 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.device* @device_create(i32, %struct.device*, i32, i32*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
