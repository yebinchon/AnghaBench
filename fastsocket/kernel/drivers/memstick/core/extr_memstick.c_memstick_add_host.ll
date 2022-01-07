; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_memstick_add_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_memstick_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 (%struct.memstick_host*, i32, i32)*, i32, i32 }

@memstick_host_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@memstick_host_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memstick%u\00", align 1
@MEMSTICK_POWER = common dso_local global i32 0, align 4
@MEMSTICK_POWER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memstick_add_host(%struct.memstick_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @idr_pre_get(i32* @memstick_host_idr, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = call i32 @spin_lock(i32* @memstick_host_lock)
  %13 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %14 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %15 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %14, i32 0, i32 1
  %16 = call i32 @idr_get_new(i32* @memstick_host_idr, %struct.memstick_host* %13, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = call i32 @spin_unlock(i32* @memstick_host_lock)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %11
  %23 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %24 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %23, i32 0, i32 2
  %25 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %26 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_set_name(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %30 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %29, i32 0, i32 2
  %31 = call i32 @device_add(i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = call i32 @spin_lock(i32* @memstick_host_lock)
  %36 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %37 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @idr_remove(i32* @memstick_host_idr, i32 %38)
  %40 = call i32 @spin_unlock(i32* @memstick_host_lock)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %22
  %43 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %44 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %43, i32 0, i32 0
  %45 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %44, align 8
  %46 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %47 = load i32, i32* @MEMSTICK_POWER, align 4
  %48 = load i32, i32* @MEMSTICK_POWER_OFF, align 4
  %49 = call i32 %45(%struct.memstick_host* %46, i32 %47, i32 %48)
  %50 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %51 = call i32 @memstick_detect_change(%struct.memstick_host* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %34, %20, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.memstick_host*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @memstick_detect_change(%struct.memstick_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
