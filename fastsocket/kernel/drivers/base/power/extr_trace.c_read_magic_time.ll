; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_read_magic_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_read_magic_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Time: %2d:%02d:%02d  Date: %02d/%02d/%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_magic_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_magic_time() #0 {
  %1 = alloca %struct.rtc_time, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @get_rtc_time(%struct.rtc_time* %1)
  %4 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %16, 100
  %18 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7, i32 %9, i32 %12, i32 %14, i32 %17)
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ugt i32 %21, 100
  br i1 %22, label %23, label %26

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  %25 = sub i32 %24, 100
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %0
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 100
  %30 = load i32, i32* %2, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %2, align 4
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = mul nsw i32 %34, 100
  %36 = mul nsw i32 %35, 12
  %37 = load i32, i32* %2, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %2, align 4
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 100
  %42 = mul nsw i32 %41, 12
  %43 = mul nsw i32 %42, 28
  %44 = load i32, i32* %2, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %2, align 4
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 3
  %49 = mul nsw i32 %48, 100
  %50 = mul nsw i32 %49, 12
  %51 = mul nsw i32 %50, 28
  %52 = mul nsw i32 %51, 24
  %53 = load i32, i32* %2, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @get_rtc_time(%struct.rtc_time*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
