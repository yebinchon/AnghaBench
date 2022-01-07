; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_add_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_add_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_adapter = type { i32, i32 }

@tifm_adapter_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tifm_adapter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tifm%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tifm_add_adapter(%struct.tifm_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tifm_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.tifm_adapter* %0, %struct.tifm_adapter** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @idr_pre_get(i32* @tifm_adapter_idr, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = call i32 @spin_lock(i32* @tifm_adapter_lock)
  %13 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %14 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %14, i32 0, i32 0
  %16 = call i32 @idr_get_new(i32* @tifm_adapter_idr, %struct.tifm_adapter* %13, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = call i32 @spin_unlock(i32* @tifm_adapter_lock)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %11
  %23 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %23, i32 0, i32 1
  %25 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_set_name(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %29, i32 0, i32 1
  %31 = call i32 @device_add(i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = call i32 @spin_lock(i32* @tifm_adapter_lock)
  %36 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @idr_remove(i32* @tifm_adapter_idr, i32 %38)
  %40 = call i32 @spin_unlock(i32* @tifm_adapter_lock)
  br label %41

41:                                               ; preds = %34, %22
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %20, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.tifm_adapter*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
