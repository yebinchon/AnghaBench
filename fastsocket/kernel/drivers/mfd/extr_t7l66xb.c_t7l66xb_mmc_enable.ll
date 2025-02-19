; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_t7l66xb.c_t7l66xb_mmc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_t7l66xb.c_t7l66xb_mmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.t7l66xb = type { i32, i64, i32 }

@SCR_DEV_CTL = common dso_local global i64 0, align 8
@SCR_DEV_CTL_MMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @t7l66xb_mmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t7l66xb_mmc_enable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.t7l66xb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.platform_device* @to_platform_device(i32 %10)
  store %struct.platform_device* %11, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.t7l66xb* %13, %struct.t7l66xb** %4, align 8
  %14 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %15 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_enable(i32 %16)
  %18 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %19 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %23 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCR_DEV_CTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @tmio_ioread8(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @SCR_DEV_CTL_MMC, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %33 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SCR_DEV_CTL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @tmio_iowrite8(i32 %31, i64 %36)
  %38 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %39 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_ioread8(i64) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
