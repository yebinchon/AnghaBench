; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, %struct.rtc_time*)* }
%struct.rtc_time = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_read_time(%struct.rtc_device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %7 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock_interruptible(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %47

22:                                               ; preds = %14
  %23 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (i32, %struct.rtc_time*)*, i32 (i32, %struct.rtc_time*)** %26, align 8
  %28 = icmp ne i32 (i32, %struct.rtc_time*)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %46

32:                                               ; preds = %22
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = call i32 @memset(%struct.rtc_time* %33, i32 0, i32 4)
  %35 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (i32, %struct.rtc_time*)*, i32 (i32, %struct.rtc_time*)** %38, align 8
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = call i32 %39(i32 %43, %struct.rtc_time* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %32, %29
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %12
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
