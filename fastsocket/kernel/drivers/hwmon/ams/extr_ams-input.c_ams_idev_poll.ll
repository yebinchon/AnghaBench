; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-input.c_ams_idev_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-input.c_ams_idev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%struct.input_polled_dev = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@ams_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ABS_X = common dso_local global i32 0, align 4
@invert = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @ams_idev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ams_idev_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %7 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %8 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %7, i32 0, i32 0
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 0))
  %11 = call i32 @ams_sensors(i32* %4, i32* %5, i32* %6)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 3), align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 2), align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 1), align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = load i32, i32* @ABS_X, align 4
  %29 = load i64, i64* @invert, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 0, %32
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  %38 = call i32 @input_report_abs(%struct.input_dev* %27, i32 %28, i32 %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = load i32, i32* @ABS_Y, align 4
  %41 = load i64, i64* @invert, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 0, %44
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %45, %43 ], [ %47, %46 ]
  %50 = call i32 @input_report_abs(%struct.input_dev* %39, i32 %40, i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %52 = load i32, i32* @ABS_Z, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @input_report_abs(%struct.input_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %56 = call i32 @input_sync(%struct.input_dev* %55)
  %57 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ams_info, i32 0, i32 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ams_sensors(i32*, i32*, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
