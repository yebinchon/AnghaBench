; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_set_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i64, i64, i32 }

@AC97_GPIO_STATUS = common dso_local global i32 0, align 4
@WM97XX_GPIO_HIGH = common dso_local global i32 0, align 4
@WM9712_ID2 = common dso_local global i64 0, align 8
@WM97xx_WM1613 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wm97xx_set_gpio(%struct.wm97xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %12 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %13 = call i32 @wm97xx_reg_read(%struct.wm97xx* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @WM97XX_GPIO_HIGH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %29 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WM9712_ID2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %35 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WM97xx_WM1613, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %41 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 1
  %44 = call i32 @wm97xx_reg_write(%struct.wm97xx* %40, i32 %41, i32 %43)
  br label %50

45:                                               ; preds = %33, %27
  %46 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %47 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @wm97xx_reg_write(%struct.wm97xx* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %52 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
