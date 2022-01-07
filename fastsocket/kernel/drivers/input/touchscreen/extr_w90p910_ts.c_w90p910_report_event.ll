; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_report_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w90p910_ts = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w90p910_ts*, i32)* @w90p910_report_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_report_event(%struct.w90p910_ts* %0, i32 %1) #0 {
  %3 = alloca %struct.w90p910_ts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  store %struct.w90p910_ts* %0, %struct.w90p910_ts** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %7 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %6, i32 0, i32 1
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = load i32, i32* @ABS_X, align 4
  %14 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %15 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 12
  %18 = call i32 @__raw_readl(i64 %17)
  %19 = call i32 @input_report_abs(%struct.input_dev* %12, i32 %13, i32 %18)
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = load i32, i32* @ABS_Y, align 4
  %22 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %23 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 16
  %26 = call i32 @__raw_readl(i64 %25)
  %27 = call i32 @input_report_abs(%struct.input_dev* %20, i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %11, %2
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = load i32, i32* @BTN_TOUCH, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @input_report_key(%struct.input_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = call i32 @input_sync(%struct.input_dev* %33)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
