; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/maple/extr_maple.c_maple_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@maple_bus_type = common dso_local global i32 0, align 4
@maple_bus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.maple_device* (i32, i32)* @maple_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.maple_device* @maple_alloc_dev(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.maple_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.maple_device* @kzalloc(i32 40, i32 %7)
  store %struct.maple_device* %8, %struct.maple_device** %6, align 8
  %9 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %10 = icmp ne %struct.maple_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.maple_device* null, %struct.maple_device** %3, align 8
  br label %41

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %15 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %18 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %20 = call i32 @maple_allocq(%struct.maple_device* %19)
  %21 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %22 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %24 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %29 = call i32 @kfree(%struct.maple_device* %28)
  store %struct.maple_device* null, %struct.maple_device** %3, align 8
  br label %41

30:                                               ; preds = %12
  %31 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %32 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* @maple_bus_type, i32** %33, align 8
  %34 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %35 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32* @maple_bus, i32** %36, align 8
  %37 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %38 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %37, i32 0, i32 2
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  store %struct.maple_device* %40, %struct.maple_device** %3, align 8
  br label %41

41:                                               ; preds = %30, %27, %11
  %42 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  ret %struct.maple_device* %42
}

declare dso_local %struct.maple_device* @kzalloc(i32, i32) #1

declare dso_local i32 @maple_allocq(%struct.maple_device*) #1

declare dso_local i32 @kfree(%struct.maple_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
