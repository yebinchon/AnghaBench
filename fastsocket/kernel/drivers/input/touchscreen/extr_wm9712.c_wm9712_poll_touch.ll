; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9712.c_wm9712_poll_touch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9712.c_wm9712_poll_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }
%struct.wm97xx_data = type { i32, i32, i32 }

@coord = common dso_local global i64 0, align 8
@RC_VALID = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_X = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_Y = common dso_local global i32 0, align 4
@pil = common dso_local global i64 0, align 8
@five_wire = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_PRES = common dso_local global i32 0, align 4
@DEFAULT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, %struct.wm97xx_data*)* @wm9712_poll_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9712_poll_touch(%struct.wm97xx* %0, %struct.wm97xx_data* %1) #0 {
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
  %12 = call i32 @wm9712_poll_coord(%struct.wm97xx* %10, %struct.wm97xx_data* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RC_VALID, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %9
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %21 = load i32, i32* @WM97XX_ADCSEL_X, align 4
  %22 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %23 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %22, i32 0, i32 2
  %24 = call i32 @wm9712_poll_sample(%struct.wm97xx* %20, i32 %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RC_VALID, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %19
  %31 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %32 = load i32, i32* @WM97XX_ADCSEL_Y, align 4
  %33 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %34 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %33, i32 0, i32 1
  %35 = call i32 @wm9712_poll_sample(%struct.wm97xx* %31, i32 %32, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RC_VALID, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %66

41:                                               ; preds = %30
  %42 = load i64, i64* @pil, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* @five_wire, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %49 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %50 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %51 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %50, i32 0, i32 0
  %52 = call i32 @wm9712_poll_sample(%struct.wm97xx* %48, i32 %49, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RC_VALID, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %66

58:                                               ; preds = %47
  br label %63

59:                                               ; preds = %44, %41
  %60 = load i32, i32* @DEFAULT_PRESSURE, align 4
  %61 = load %struct.wm97xx_data*, %struct.wm97xx_data** %5, align 8
  %62 = getelementptr inbounds %struct.wm97xx_data, %struct.wm97xx_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %58
  br label %64

64:                                               ; preds = %63, %18
  %65 = load i32, i32* @RC_VALID, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %56, %39, %28, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @wm9712_poll_coord(%struct.wm97xx*, %struct.wm97xx_data*) #1

declare dso_local i32 @wm9712_poll_sample(%struct.wm97xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
