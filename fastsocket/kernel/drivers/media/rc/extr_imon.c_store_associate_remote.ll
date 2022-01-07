; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_store_associate_remote.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_store_associate_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.imon_context = type { i32, i32 }

@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_associate_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_associate_remote(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.imon_context*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.imon_context* @dev_get_drvdata(%struct.device* %11)
  store %struct.imon_context* %12, %struct.imon_context** %10, align 8
  %13 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %14 = icmp ne %struct.imon_context* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %30

18:                                               ; preds = %4
  %19 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %20 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %23 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %25 = call i32 @send_associate_24g(%struct.imon_context* %24)
  %26 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %27 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local %struct.imon_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_associate_24g(%struct.imon_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
