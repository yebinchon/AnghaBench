; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_lcd_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_lcd_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_videomode = type { i32 }
%struct.tc6393xb = type { i32, i64 }

@SCR_PLL1CR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc6393xb_lcd_mode(%struct.platform_device* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.tc6393xb*, align 8
  %7 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.platform_device* @to_platform_device(i32 %11)
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = call %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.tc6393xb* %14, %struct.tc6393xb** %6, align 8
  %15 = load %struct.tc6393xb*, %struct.tc6393xb** %6, align 8
  %16 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %20 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tc6393xb*, %struct.tc6393xb** %6, align 8
  %23 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCR_PLL1CR, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 0
  %28 = call i32 @iowrite16(i32 %21, i64 %27)
  %29 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %30 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = load %struct.tc6393xb*, %struct.tc6393xb** %6, align 8
  %34 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SCR_PLL1CR, align 8
  %37 = add nsw i64 %35, %36
  %38 = add nsw i64 %37, 2
  %39 = call i32 @iowrite16(i32 %32, i64 %38)
  %40 = load %struct.tc6393xb*, %struct.tc6393xb** %6, align 8
  %41 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
