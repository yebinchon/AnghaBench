; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_host.c_mmc_alloc_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_host.c_mmc_alloc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_5__, %struct.device*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32*, %struct.device* }
%struct.device = type { i32 }

@mmc_host_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mmc_host_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mmc%d\00", align 1
@mmc_host_class = common dso_local global i32 0, align 4
@mmc_rescan = common dso_local global i32 0, align 4
@mmc_host_deeper_disable = common dso_local global i32 0, align 4
@mmc_pm_notify = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mmc_host* @mmc_alloc_host(i32 %0, %struct.device* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_host*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @idr_pre_get(i32* @mmc_host_idr, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mmc_host* null, %struct.mmc_host** %3, align 8
  br label %90

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 80, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mmc_host* @kzalloc(i32 %16, i32 %17)
  store %struct.mmc_host* %18, %struct.mmc_host** %7, align 8
  %19 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %20 = icmp ne %struct.mmc_host* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store %struct.mmc_host* null, %struct.mmc_host** %3, align 8
  br label %90

22:                                               ; preds = %12
  %23 = call i32 @spin_lock(i32* @mmc_host_lock)
  %24 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %25 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 13
  %27 = call i32 @idr_get_new(i32* @mmc_host_idr, %struct.mmc_host* %24, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = call i32 @spin_unlock(i32* @mmc_host_lock)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %87

32:                                               ; preds = %22
  %33 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 11
  %35 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_set_name(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %41 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %40, i32 0, i32 12
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store %struct.device* %42, %struct.device** %45, align 8
  %46 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %47 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32* @mmc_host_class, i32** %48, align 8
  %49 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 11
  %51 = call i32 @device_initialize(%struct.TYPE_5__* %50)
  %52 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %52, i32 0, i32 10
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 9
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 8
  %60 = load i32, i32* @mmc_rescan, align 4
  %61 = call i32 @INIT_DELAYED_WORK(i32* %59, i32 %60)
  %62 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 7
  %64 = load i32, i32* @mmc_host_deeper_disable, align 4
  %65 = call i32 @INIT_DELAYED_WORK_DEFERRABLE(i32* %63, i32 %64)
  %66 = load i32, i32* @mmc_pm_notify, align 4
  %67 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %71 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %75 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %76 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %78 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %80, i32 0, i32 4
  store i32 512, i32* %81, align 8
  %82 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %83 = sdiv i32 %82, 512
  %84 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %86, %struct.mmc_host** %3, align 8
  br label %90

87:                                               ; preds = %31
  %88 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %89 = call i32 @kfree(%struct.mmc_host* %88)
  store %struct.mmc_host* null, %struct.mmc_host** %3, align 8
  br label %90

90:                                               ; preds = %87, %32, %21, %11
  %91 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  ret %struct.mmc_host* %91
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local %struct.mmc_host* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.mmc_host*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK_DEFERRABLE(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
