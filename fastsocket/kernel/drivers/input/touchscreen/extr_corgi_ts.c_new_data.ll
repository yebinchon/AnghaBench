; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_new_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_new_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_ts = type { i64, i64, %struct.TYPE_2__, %struct.input_dev* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.input_dev = type { i32 }

@PWR_MODE_ACTIVE = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.corgi_ts*)* @new_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_data(%struct.corgi_ts* %0) #0 {
  %2 = alloca %struct.corgi_ts*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.corgi_ts* %0, %struct.corgi_ts** %2, align 8
  %4 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %5 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %4, i32 0, i32 3
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %8 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PWR_MODE_ACTIVE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %15 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %21 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %55

25:                                               ; preds = %19, %13
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = load i32, i32* @ABS_X, align 4
  %28 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %29 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @input_report_abs(%struct.input_dev* %26, i32 %27, i32 %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %34 = load i32, i32* @ABS_Y, align 4
  %35 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %36 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @input_report_abs(%struct.input_dev* %33, i32 %34, i32 %38)
  %40 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %41 = load i32, i32* @ABS_PRESSURE, align 4
  %42 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %43 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @input_report_abs(%struct.input_dev* %40, i32 %41, i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %48 = load i32, i32* @BTN_TOUCH, align 4
  %49 = load %struct.corgi_ts*, %struct.corgi_ts** %2, align 8
  %50 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @input_report_key(%struct.input_dev* %47, i32 %48, i64 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %54 = call i32 @input_sync(%struct.input_dev* %53)
  br label %55

55:                                               ; preds = %25, %24, %12
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
