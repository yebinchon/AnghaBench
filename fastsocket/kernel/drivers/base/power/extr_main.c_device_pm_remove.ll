; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_pm_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_main.c_device_pm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"PM: Removing info for %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"No Bus\00", align 1
@dpm_list_mtx = common dso_local global i32 0, align 4
@dpm_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_pm_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8* [ %12, %7 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %13 ]
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = call i32 @kobject_name(i32* %17)
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18)
  %20 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @list_del_init(i32* %23)
  %25 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %26 = load %struct.device*, %struct.device** %2, align 8
  %27 = call i32 @pm_runtime_remove(%struct.device* %26)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_remove(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
