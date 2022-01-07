; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_jornada720_ts.c_jornada720_ts_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_jornada720_ts.c_jornada720_ts_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.jornada_ts = type { i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@GPLR = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@GETTOUCHSAMPLES = common dso_local global i32 0, align 4
@TXDUMMY = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jornada720_ts_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada720_ts_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.jornada_ts*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.platform_device*
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call %struct.jornada_ts* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.jornada_ts* %13, %struct.jornada_ts** %6, align 8
  %14 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %15 = getelementptr inbounds %struct.jornada_ts, %struct.jornada_ts* %14, i32 0, i32 2
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %7, align 8
  %17 = load i32, i32* @GPLR, align 4
  %18 = call i32 @GPIO_GPIO(i32 9)
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %23 = load i32, i32* @BTN_TOUCH, align 4
  %24 = call i32 @input_report_key(%struct.input_dev* %22, i32 %23, i32 0)
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = call i32 @input_sync(%struct.input_dev* %25)
  br label %59

27:                                               ; preds = %2
  %28 = call i32 (...) @jornada_ssp_start()
  %29 = load i32, i32* @GETTOUCHSAMPLES, align 4
  %30 = call i64 @jornada_ssp_inout(i32 %29)
  %31 = load i64, i64* @TXDUMMY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %35 = call i32 @jornada720_ts_collect_data(%struct.jornada_ts* %34)
  %36 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %37 = getelementptr inbounds %struct.jornada_ts, %struct.jornada_ts* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @jornada720_ts_average(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %41 = getelementptr inbounds %struct.jornada_ts, %struct.jornada_ts* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @jornada720_ts_average(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %45 = load i32, i32* @BTN_TOUCH, align 4
  %46 = call i32 @input_report_key(%struct.input_dev* %44, i32 %45, i32 1)
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = load i32, i32* @ABS_X, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @input_report_abs(%struct.input_dev* %47, i32 %48, i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %52 = load i32, i32* @ABS_Y, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @input_report_abs(%struct.input_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %56 = call i32 @input_sync(%struct.input_dev* %55)
  br label %57

57:                                               ; preds = %33, %27
  %58 = call i32 (...) @jornada_ssp_end()
  br label %59

59:                                               ; preds = %57, %21
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %60
}

declare dso_local %struct.jornada_ts* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @GPIO_GPIO(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @jornada_ssp_start(...) #1

declare dso_local i64 @jornada_ssp_inout(i32) #1

declare dso_local i32 @jornada720_ts_collect_data(%struct.jornada_ts*) #1

declare dso_local i32 @jornada720_ts_average(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @jornada_ssp_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
