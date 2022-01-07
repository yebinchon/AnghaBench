; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_atmel-wm97xx.c_atmel_wm97xx_channel_b_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_atmel-wm97xx.c_atmel_wm97xx_channel_b_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_wm97xx = type { i32, i32, %struct.wm97xx* }
%struct.wm97xx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CBSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AC97C_OVRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AC97C overrun\0A\00", align 1
@CBRHR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@AC97C_RXRDY = common dso_local global i32 0, align 4
@WM97XX_ADCSRC_MASK = common dso_local global i32 0, align 4
@WM97XX_PEN_DOWN = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_X = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_Y = common dso_local global i32 0, align 4
@pressure = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_PRES = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_wm97xx_channel_b_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_wm97xx_channel_b_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_wm97xx*, align 8
  %6 = alloca %struct.wm97xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.atmel_wm97xx*
  store %struct.atmel_wm97xx* %14, %struct.atmel_wm97xx** %5, align 8
  %15 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %16 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %15, i32 0, i32 2
  %17 = load %struct.wm97xx*, %struct.wm97xx** %16, align 8
  store %struct.wm97xx* %17, %struct.wm97xx** %6, align 8
  %18 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %19 = load i32, i32* @CBSR, align 4
  %20 = call i32 @ac97c_readl(%struct.atmel_wm97xx* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AC97C_OVRUN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %28 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %33 = load i32, i32* @CBRHR, align 4
  %34 = call i32 @ac97c_readl(%struct.atmel_wm97xx* %32, i32 %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %8, align 4
  br label %147

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @AC97C_RXRDY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %146

41:                                               ; preds = %36
  %42 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %43 = load i32, i32* @CBRHR, align 4
  %44 = call i32 @ac97c_readl(%struct.atmel_wm97xx* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 4095
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @WM97XX_ADCSRC_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 8
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @WM97XX_ADCSEL_X, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %60 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %41
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @WM97XX_ADCSEL_Y, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %68 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i64, i64* @pressure, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @WM97XX_ADCSEL_Y, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %78 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ABS_X, align 4
  %81 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %82 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @input_report_abs(i32 %79, i32 %80, i32 %83)
  %85 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %86 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ABS_Y, align 4
  %89 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %90 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @input_report_abs(i32 %87, i32 %88, i32 %91)
  %93 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %94 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BTN_TOUCH, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @input_report_key(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %100 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @input_sync(i32 %101)
  br label %144

103:                                              ; preds = %72, %69
  %104 = load i64, i64* @pressure, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %143

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %143

110:                                              ; preds = %106
  %111 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %112 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ABS_X, align 4
  %115 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %116 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @input_report_abs(i32 %113, i32 %114, i32 %117)
  %119 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %120 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ABS_Y, align 4
  %123 = load %struct.atmel_wm97xx*, %struct.atmel_wm97xx** %5, align 8
  %124 = getelementptr inbounds %struct.atmel_wm97xx, %struct.atmel_wm97xx* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @input_report_abs(i32 %121, i32 %122, i32 %125)
  %127 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %128 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ABS_PRESSURE, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @input_report_abs(i32 %129, i32 %130, i32 %131)
  %133 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %134 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BTN_TOUCH, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @input_report_key(i32 %135, i32 %136, i32 %137)
  %139 = load %struct.wm97xx*, %struct.wm97xx** %6, align 8
  %140 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @input_sync(i32 %141)
  br label %143

143:                                              ; preds = %110, %106, %103
  br label %144

144:                                              ; preds = %143, %76
  %145 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %144, %36
  br label %147

147:                                              ; preds = %146, %26
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i32 @ac97c_readl(%struct.atmel_wm97xx*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
