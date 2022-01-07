; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-lib.c_rtc_time_to_tm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-lib.c_rtc_time_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_time_to_tm(i64 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = udiv i64 %9, 86400
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = mul i32 %12, 86400
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %3, align 8
  %16 = sub i64 %15, %14
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 4
  %19 = srem i32 %18, 7
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 365
  %24 = add nsw i32 1970, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %25, 1970
  %27 = mul i32 %26, 365
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, 1
  %31 = call i64 @LEAPS_THRU_END_OF(i32 %30)
  %32 = add nsw i64 %28, %31
  %33 = call i64 @LEAPS_THRU_END_OF(i32 1969)
  %34 = sub nsw i64 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @is_leap_year(i32 %44)
  %46 = add nsw i64 365, %45
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %41, %2
  %52 = load i32, i32* %6, align 4
  %53 = sub i32 %52, 1900
  %54 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %74, %51
  %61 = load i32, i32* %5, align 4
  %62 = icmp ult i32 %61, 11
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @rtc_month_days(i32 %65, i32 %66)
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %77

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %60

77:                                               ; preds = %71, %60
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* %3, align 8
  %86 = udiv i64 %85, 3600
  %87 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  %89 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = mul i64 %91, 3600
  %93 = load i64, i64* %3, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %3, align 8
  %95 = load i64, i64* %3, align 8
  %96 = udiv i64 %95, 60
  %97 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 6
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %3, align 8
  %100 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %101 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = mul i64 %102, 60
  %104 = sub i64 %99, %103
  %105 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 7
  store i64 %104, i64* %106, align 8
  ret void
}

declare dso_local i64 @LEAPS_THRU_END_OF(i32) #1

declare dso_local i64 @is_leap_year(i32) #1

declare dso_local i32 @rtc_month_days(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
