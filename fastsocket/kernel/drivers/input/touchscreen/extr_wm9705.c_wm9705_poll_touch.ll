; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_touch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }
%struct.wm97xx_data = type { i32, i32, i32 }

@WM97XX_ADCSEL_X = common dso_local global i32 0, align 4
@RC_VALID = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_Y = common dso_local global i32 0, align 4
@pil = common dso_local global i64 0, align 8
@WM97XX_ADCSEL_PRES = common dso_local global i32 0, align 4
@DEFAULT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, %struct.wm97xx_data*)* @wm9705_poll_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9705_poll_touch(%struct.wm97xx* %0, %struct.wm97xx_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca %struct.wm97xx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store %struct.wm97xx_data* %1, %struct.wm97xx_data** %5, align 8
  %7 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %8 = load i32, i32* @WM97XX_ADCSEL_X, align 4
  %9 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %10 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %9, i32 0, i32 2
  %11 = call i32 @wm9705_poll_sample(%struct.wm97xx* %7, i32 %8, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @RC_VALID, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %19 = load i32, i32* @WM97XX_ADCSEL_Y, align 4
  %20 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %21 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %20, i32 0, i32 1
  %22 = call i32 @wm9705_poll_sample(%struct.wm97xx* %18, i32 %19, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @RC_VALID, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %17
  %29 = load i64, i64* @pil, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %33 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %34 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %35 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %34, i32 0, i32 0
  %36 = call i32 @wm9705_poll_sample(%struct.wm97xx* %32, i32 %33, i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RC_VALID, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %28
  %44 = load i32, i32* @DEFAULT_PRESSURE, align 4
  %45 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %46 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i32, i32* @RC_VALID, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %40, %26, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @wm9705_poll_sample(%struct.wm97xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
