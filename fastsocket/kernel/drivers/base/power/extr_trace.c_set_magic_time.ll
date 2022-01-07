; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_set_magic_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_set_magic_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USERHASH = common dso_local global i32 0, align 4
@FILEHASH = common dso_local global i32 0, align 4
@set_magic_time.time = internal global %struct.rtc_time { i32 0, i32 0, i32 7, i32 5, i32 106, i32 3, i32 160, i32 1, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @set_magic_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_magic_time(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @USERHASH, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FILEHASH, align 4
  %12 = load i32, i32* %6, align 4
  %13 = mul i32 %11, %12
  %14 = add i32 %10, %13
  %15 = mul i32 %9, %14
  %16 = add i32 %8, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = urem i32 %17, 100
  store i32 %18, i32* getelementptr inbounds (%struct.rtc_time, %struct.rtc_time* @set_magic_time.time, i32 0, i32 4), align 4
  %19 = load i32, i32* %7, align 4
  %20 = udiv i32 %19, 100
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = urem i32 %21, 12
  store i32 %22, i32* getelementptr inbounds (%struct.rtc_time, %struct.rtc_time* @set_magic_time.time, i32 0, i32 3), align 4
  %23 = load i32, i32* %7, align 4
  %24 = udiv i32 %23, 12
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = urem i32 %25, 28
  %27 = add i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.rtc_time, %struct.rtc_time* @set_magic_time.time, i32 0, i32 2), align 4
  %28 = load i32, i32* %7, align 4
  %29 = udiv i32 %28, 28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = urem i32 %30, 24
  store i32 %31, i32* getelementptr inbounds (%struct.rtc_time, %struct.rtc_time* @set_magic_time.time, i32 0, i32 1), align 4
  %32 = load i32, i32* %7, align 4
  %33 = udiv i32 %32, 24
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = urem i32 %34, 20
  %36 = mul i32 %35, 3
  store i32 %36, i32* getelementptr inbounds (%struct.rtc_time, %struct.rtc_time* @set_magic_time.time, i32 0, i32 0), align 4
  %37 = load i32, i32* %7, align 4
  %38 = udiv i32 %37, 20
  store i32 %38, i32* %7, align 4
  %39 = call i32 @set_rtc_time(%struct.rtc_time* @set_magic_time.time)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 -1, i32 0
  ret i32 %43
}

declare dso_local i32 @set_rtc_time(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
