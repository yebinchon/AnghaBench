; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_touch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }
%struct.wm97xx_data = type { i32, i32, i32 }

@coord = common dso_local global i64 0, align 8
@RC_VALID = common dso_local global i32 0, align 4
@WM9713_ADCSEL_X = common dso_local global i32 0, align 4
@WM9713_ADCSEL_Y = common dso_local global i32 0, align 4
@pil = common dso_local global i64 0, align 8
@WM9713_ADCSEL_PRES = common dso_local global i32 0, align 4
@DEFAULT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, %struct.wm97xx_data*)* @wm9713_poll_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_poll_touch(%struct.wm97xx* %0, %struct.wm97xx_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca %struct.wm97xx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store %struct.wm97xx_data* %1, %struct.wm97xx_data** %5, align 8
  %7 = load i64, i64* @coord, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %11 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %12 = call i32 @wm9713_poll_coord(%struct.wm97xx* %10, %struct.wm97xx_data* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RC_VALID, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %9
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %21 = load i32, i32* @WM9713_ADCSEL_X, align 4
  %22 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %23 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %22, i32 0, i32 2
  %24 = call i32 @wm9713_poll_sample(%struct.wm97xx* %20, i32 %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RC_VALID, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %19
  %31 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %32 = load i32, i32* @WM9713_ADCSEL_Y, align 4
  %33 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %34 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %33, i32 0, i32 1
  %35 = call i32 @wm9713_poll_sample(%struct.wm97xx* %31, i32 %32, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RC_VALID, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %30
  %42 = load i64, i64* @pil, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %46 = load i32, i32* @WM9713_ADCSEL_PRES, align 4
  %47 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %48 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %47, i32 0, i32 0
  %49 = call i32 @wm9713_poll_sample(%struct.wm97xx* %45, i32 %46, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RC_VALID, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %44
  br label %60

56:                                               ; preds = %41
  %57 = load i32, i32* @DEFAULT_PRESSURE, align 4
  %58 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %59 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i32, i32* @RC_VALID, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %53, %39, %28, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @wm9713_poll_coord(%struct.wm97xx*, %struct.wm97xx_data*) #1

declare dso_local i32 @wm9713_poll_sample(%struct.wm97xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
