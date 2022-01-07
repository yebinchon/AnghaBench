; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_clc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_clc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { %struct.TYPE_2__, i32, i64* }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_clc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca %struct.nes_adapter*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.nes_device*
  store %struct.nes_device* %7, %struct.nes_device** %4, align 8
  %8 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %9 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %8, i32 0, i32 0
  %10 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  store %struct.nes_adapter* %10, %struct.nes_adapter** %5, align 8
  %11 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %31, i32 0, i32 1
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 3600, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %43, i32 0, i32 0
  %45 = call i32 @add_timer(%struct.TYPE_2__* %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
