; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_zylonite-wm97xx.c_wm97xx_acc_pen_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_zylonite-wm97xx.c_wm97xx_acc_pen_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wm97xx = type { i32 }

@WM97XX_ADCSEL_PRES = common dso_local global i32 0, align 4
@wm97xx_acc_pen_down.last = internal global i32 0, align 4
@wm97xx_acc_pen_down.tries = internal global i32 0, align 4
@RC_PENUP = common dso_local global i32 0, align 4
@MODR = common dso_local global i32 0, align 4
@RC_AGAIN = common dso_local global i32 0, align 4
@pressure = common dso_local global i64 0, align 8
@WM97XX_ADCSRC_MASK = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_X = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@cinfo = common dso_local global %struct.TYPE_2__* null, align 8
@sp_idx = common dso_local global i64 0, align 8
@RC_PENDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @wm97xx_acc_pen_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_acc_pen_down(%struct.wm97xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  %8 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %9 = or i32 256, %8
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @msleep(i32 1)
  %11 = load i32, i32* @wm97xx_acc_pen_down.tries, align 4
  %12 = icmp sgt i32 %11, 5
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  store i32 0, i32* @wm97xx_acc_pen_down.tries, align 4
  %14 = load i32, i32* @RC_PENUP, align 4
  store i32 %14, i32* %2, align 4
  br label %105

15:                                               ; preds = %1
  %16 = load i32, i32* @MODR, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @wm97xx_acc_pen_down.last, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @wm97xx_acc_pen_down.tries, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @wm97xx_acc_pen_down.tries, align 4
  %23 = load i32, i32* @RC_AGAIN, align 4
  store i32 %23, i32* %2, align 4
  br label %105

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* @wm97xx_acc_pen_down.last, align 4
  br label %26

26:                                               ; preds = %92, %24
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @MODR, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* @MODR, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* @pressure, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @MODR, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @WM97XX_ADCSRC_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @WM97XX_ADCSEL_X, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @WM97XX_ADCSRC_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @WM97XX_ADCSEL_Y, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @WM97XX_ADCSRC_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43, %37
  br label %101

56:                                               ; preds = %49
  store i32 0, i32* @wm97xx_acc_pen_down.tries, align 4
  %57 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %58 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ABS_X, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 4095
  %63 = call i32 @input_report_abs(i32 %59, i32 %60, i32 %62)
  %64 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %65 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ABS_Y, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 4095
  %70 = call i32 @input_report_abs(i32 %66, i32 %67, i32 %69)
  %71 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %72 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ABS_PRESSURE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 4095
  %77 = call i32 @input_report_abs(i32 %73, i32 %74, i32 %76)
  %78 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %79 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BTN_TOUCH, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @input_report_key(i32 %80, i32 %81, i32 %84)
  %86 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %87 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @input_sync(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %56
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cinfo, align 8
  %95 = load i64, i64* @sp_idx, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %26, label %100

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %55
  %102 = load i32, i32* @RC_PENDOWN, align 4
  %103 = load i32, i32* @RC_AGAIN, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %20, %13
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
