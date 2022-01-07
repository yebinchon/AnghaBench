; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_dpm_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_dpm_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@dpm_list_mtx = common dso_local global i32 0, align 4
@transition_started = common dso_local global i32 0, align 4
@dpm_list = common dso_local global %struct.list_head zeroinitializer, align 8
@DPM_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dpm_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpm_complete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.device*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @INIT_LIST_HEAD(%struct.list_head* %3)
  %7 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  store i32 0, i32* @transition_started, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = call i32 @list_empty(%struct.list_head* @dpm_list)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  %14 = call %struct.device* @to_device(%struct.list_head* %13)
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  store %struct.list_head* %15, %struct.list_head** %4, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @get_device(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DPM_ON, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %12
  %25 = load i64, i64* @DPM_ON, align 8
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @device_complete(%struct.device* %30, i32 %31)
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @pm_runtime_put_noidle(%struct.device* %33)
  %35 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  br label %36

36:                                               ; preds = %24, %12
  %37 = load %struct.list_head*, %struct.list_head** %4, align 8
  %38 = call i32 @list_empty(%struct.list_head* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.list_head*, %struct.list_head** %4, align 8
  %42 = call i32 @list_move(%struct.list_head* %41, %struct.list_head* %3)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = call i32 @put_device(%struct.device* %44)
  br label %8

46:                                               ; preds = %8
  %47 = call i32 @list_splice(%struct.list_head* %3, %struct.list_head* @dpm_list)
  %48 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.device* @to_device(%struct.list_head*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_complete(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @list_move(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @list_splice(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
