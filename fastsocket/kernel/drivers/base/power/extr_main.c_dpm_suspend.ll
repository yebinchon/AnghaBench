; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_dpm_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_dpm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dpm_list_mtx = common dso_local global i32 0, align 4
@dpm_list = common dso_local global %struct.list_head zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DPM_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dpm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpm_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 @INIT_LIST_HEAD(%struct.list_head* %3)
  %8 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  br label %9

9:                                                ; preds = %44, %1
  %10 = call i32 @list_empty(%struct.list_head* @dpm_list)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  %15 = call %struct.device* @to_device(%struct.list_head* %14)
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  store %struct.list_head* %16, %struct.list_head** %4, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @get_device(%struct.device* %17)
  %19 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @device_suspend(%struct.device* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pm_dev_err(%struct.device* %27, i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @put_device(%struct.device* %31)
  br label %47

33:                                               ; preds = %13
  %34 = load i32, i32* @DPM_OFF, align 4
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.list_head*, %struct.list_head** %4, align 8
  %39 = call i32 @list_empty(%struct.list_head* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load %struct.list_head*, %struct.list_head** %4, align 8
  %43 = call i32 @list_move(%struct.list_head* %42, %struct.list_head* %3)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @put_device(%struct.device* %45)
  br label %9

47:                                               ; preds = %26, %9
  %48 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  %49 = call i32 @list_splice(%struct.list_head* %3, %struct.list_head* %48)
  %50 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.device* @to_device(%struct.list_head*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_suspend(%struct.device*, i32) #1

declare dso_local i32 @pm_dev_err(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @list_move(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @list_splice(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
