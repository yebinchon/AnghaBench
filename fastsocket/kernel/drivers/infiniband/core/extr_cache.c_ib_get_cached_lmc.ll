; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_get_cached_lmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_get_cached_lmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_cached_lmc(%struct.ib_device* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call i64 @start_port(%struct.ib_device* %11)
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = call i64 @end_port(%struct.ib_device* %16)
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %14
  %23 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %24 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @read_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %29 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %34 = call i64 @start_port(%struct.ib_device* %33)
  %35 = sub nsw i64 %32, %34
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  %39 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %40 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @read_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %22, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @start_port(%struct.ib_device*) #1

declare dso_local i64 @end_port(%struct.ib_device*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
