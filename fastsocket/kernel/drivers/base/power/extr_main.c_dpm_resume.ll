; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_dpm_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_dpm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@dpm_list_mtx = common dso_local global i32 0, align 4
@dpm_list = common dso_local global %struct.list_head zeroinitializer, align 8
@DPM_OFF = common dso_local global i64 0, align 8
@DPM_RESUMING = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DPM_SUSPENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dpm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpm_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 @INIT_LIST_HEAD(%struct.list_head* %3)
  %8 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  br label %9

9:                                                ; preds = %65, %1
  %10 = call i32 @list_empty(%struct.list_head* @dpm_list)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %68

13:                                               ; preds = %9
  %14 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  %15 = call %struct.device* @to_device(%struct.list_head* %14)
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  store %struct.list_head* %16, %struct.list_head** %4, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @get_device(%struct.device* %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DPM_OFF, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %13
  %26 = load i8*, i8** @DPM_RESUMING, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @device_resume(%struct.device* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pm_dev_err(%struct.device* %39, i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %25
  br label %58

44:                                               ; preds = %13
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DPM_SUSPENDING, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i8*, i8** @DPM_RESUMING, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.list_head*, %struct.list_head** %4, align 8
  %60 = call i32 @list_empty(%struct.list_head* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.list_head*, %struct.list_head** %4, align 8
  %64 = call i32 @list_move_tail(%struct.list_head* %63, %struct.list_head* %3)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = call i32 @put_device(%struct.device* %66)
  br label %9

68:                                               ; preds = %9
  %69 = call i32 @list_splice(%struct.list_head* %3, %struct.list_head* @dpm_list)
  %70 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.device* @to_device(%struct.list_head*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_resume(%struct.device*, i32) #1

declare dso_local i32 @pm_dev_err(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @list_move_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @list_splice(%struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
