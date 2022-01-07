; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_enable_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i32 }
%struct.sa1111 = type { i32, i64 }

@SA1111_SKPCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa1111_enable_device(%struct.sa1111_dev* %0) #0 {
  %2 = alloca %struct.sa1111_dev*, align 8
  %3 = alloca %struct.sa1111*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %2, align 8
  %6 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %7 = call %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev* %6)
  store %struct.sa1111* %7, %struct.sa1111** %3, align 8
  %8 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %9 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %13 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SA1111_SKPCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @sa1111_readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %20 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %24 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SA1111_SKPCR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @sa1111_writel(i32 %22, i64 %27)
  %29 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %30 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %29, i32 0, i32 0
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sa1111_readl(i64) #1

declare dso_local i32 @sa1111_writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
