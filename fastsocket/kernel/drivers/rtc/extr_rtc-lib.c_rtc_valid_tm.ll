; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-lib.c_rtc_valid_tm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-lib.c_rtc_valid_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_valid_tm(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  %4 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %5 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 70
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp uge i32 %12, 12
  br i1 %13, label %50, label %14

14:                                               ; preds = %8
  %15 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1900
  %30 = call i32 @rtc_month_days(i64 %25, i32 %29)
  %31 = icmp sgt i32 %22, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %19
  %33 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp uge i32 %36, 24
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp uge i32 %42, 60
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp uge i32 %48, 60
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38, %32, %19, %14, %8, %1
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @rtc_month_days(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
