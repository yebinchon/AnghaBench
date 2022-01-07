; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c_locomo_frontlight_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_locomo.c_locomo_frontlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locomo_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.locomo = type { i32, i64 }

@LOCOMO_GPIO_FL_VR = common dso_local global i32 0, align 4
@LOCOMO_FRONTLIGHT = common dso_local global i64 0, align 8
@LOCOMO_ALS = common dso_local global i64 0, align 8
@LOCOMO_ALD = common dso_local global i64 0, align 8
@LOCOMO_ALC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locomo_frontlight_set(%struct.locomo_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.locomo_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.locomo*, align 8
  store %struct.locomo_dev* %0, %struct.locomo_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %12 = call %struct.locomo* @locomo_chip_driver(%struct.locomo_dev* %11)
  store %struct.locomo* %12, %struct.locomo** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %17 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LOCOMO_GPIO_FL_VR, align 4
  %21 = call i32 @locomo_gpio_write(i32 %19, i32 %20, i32 1)
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.locomo_dev*, %struct.locomo_dev** %5, align 8
  %24 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LOCOMO_GPIO_FL_VR, align 4
  %28 = call i32 @locomo_gpio_write(i32 %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.locomo*, %struct.locomo** %10, align 8
  %31 = getelementptr inbounds %struct.locomo, %struct.locomo* %30, i32 0, i32 0
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.locomo*, %struct.locomo** %10, align 8
  %36 = getelementptr inbounds %struct.locomo, %struct.locomo* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LOCOMO_FRONTLIGHT, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @LOCOMO_ALS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @locomo_writel(i32 %34, i64 %41)
  %43 = call i32 @udelay(i32 100)
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.locomo*, %struct.locomo** %10, align 8
  %46 = getelementptr inbounds %struct.locomo, %struct.locomo* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LOCOMO_FRONTLIGHT, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* @LOCOMO_ALD, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @locomo_writel(i32 %44, i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @LOCOMO_ALC_EN, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.locomo*, %struct.locomo** %10, align 8
  %57 = getelementptr inbounds %struct.locomo, %struct.locomo* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LOCOMO_FRONTLIGHT, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* @LOCOMO_ALS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @locomo_writel(i32 %55, i64 %62)
  %64 = load %struct.locomo*, %struct.locomo** %10, align 8
  %65 = getelementptr inbounds %struct.locomo, %struct.locomo* %64, i32 0, i32 0
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret void
}

declare dso_local %struct.locomo* @locomo_chip_driver(%struct.locomo_dev*) #1

declare dso_local i32 @locomo_gpio_write(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @locomo_writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
