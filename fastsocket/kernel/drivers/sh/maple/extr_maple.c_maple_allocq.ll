; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_allocq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_allocq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapleq = type { %struct.TYPE_2__*, %struct.maple_device*, i32 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.maple_device = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@maple_queue_cache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"could not allocate memory for device (%d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapleq* (%struct.maple_device*)* @maple_allocq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapleq* @maple_allocq(%struct.maple_device* %0) #0 {
  %2 = alloca %struct.mapleq*, align 8
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca %struct.mapleq*, align 8
  store %struct.maple_device* %0, %struct.maple_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mapleq* @kzalloc(i32 24, i32 %5)
  store %struct.mapleq* %6, %struct.mapleq** %4, align 8
  %7 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %8 = icmp ne %struct.mapleq* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %12 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %11, i32 0, i32 2
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %15 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %16 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %15, i32 0, i32 1
  store %struct.maple_device* %14, %struct.maple_device** %16, align 8
  %17 = load i32, i32* @maple_queue_cache, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_2__* @kmem_cache_zalloc(i32 %17, i32 %18)
  %20 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %21 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %20, i32 0, i32 0
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %23 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %10
  br label %39

27:                                               ; preds = %10
  %28 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %29 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %35 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* %33, i32** %37, align 8
  %38 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  store %struct.mapleq* %38, %struct.mapleq** %2, align 8
  br label %52

39:                                               ; preds = %26
  %40 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %41 = call i32 @kfree(%struct.mapleq* %40)
  br label %42

42:                                               ; preds = %39, %9
  %43 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %44 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %43, i32 0, i32 2
  %45 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %46 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %49 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  store %struct.mapleq* null, %struct.mapleq** %2, align 8
  br label %52

52:                                               ; preds = %42, %27
  %53 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  ret %struct.mapleq* %53
}

declare dso_local %struct.mapleq* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_2__* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mapleq*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
