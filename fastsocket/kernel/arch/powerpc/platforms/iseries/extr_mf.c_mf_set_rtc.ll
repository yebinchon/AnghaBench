; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_set_rtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_mf_set_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @mf_set_rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf_set_rtc(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca [12 x i8], align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %12 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 1900, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = udiv i32 %16, 100
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %9, align 1
  %19 = load i32, i32* %11, align 4
  %20 = urem i32 %19, 100
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %10, align 1
  %22 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 4
  store i8 %24, i8* %8, align 1
  %25 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %7, align 1
  %28 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 2
  store i8 %30, i8* %6, align 1
  %31 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 4
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %4, align 1
  %34 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 5
  %36 = load i8, i8* %35, align 4
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, 1
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %5, align 1
  %40 = load i8, i8* %8, align 1
  %41 = call signext i8 @bin2bcd(i8 signext %40)
  store i8 %41, i8* %8, align 1
  %42 = load i8, i8* %7, align 1
  %43 = call signext i8 @bin2bcd(i8 signext %42)
  store i8 %43, i8* %7, align 1
  %44 = load i8, i8* %6, align 1
  %45 = call signext i8 @bin2bcd(i8 signext %44)
  store i8 %45, i8* %6, align 1
  %46 = load i8, i8* %5, align 1
  %47 = call signext i8 @bin2bcd(i8 signext %46)
  store i8 %47, i8* %5, align 1
  %48 = load i8, i8* %4, align 1
  %49 = call signext i8 @bin2bcd(i8 signext %48)
  store i8 %49, i8* %4, align 1
  %50 = load i8, i8* %9, align 1
  %51 = call signext i8 @bin2bcd(i8 signext %50)
  store i8 %51, i8* %9, align 1
  %52 = load i8, i8* %10, align 1
  %53 = call signext i8 @bin2bcd(i8 signext %52)
  store i8 %53, i8* %10, align 1
  %54 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %55 = call i32 @memset(i8* %54, i32 0, i32 12)
  %56 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 3
  store i8 65, i8* %56, align 1
  %57 = load i8, i8* %9, align 1
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 4
  store i8 %57, i8* %58, align 1
  %59 = load i8, i8* %10, align 1
  %60 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 5
  store i8 %59, i8* %60, align 1
  %61 = load i8, i8* %8, align 1
  %62 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 6
  store i8 %61, i8* %62, align 1
  %63 = load i8, i8* %7, align 1
  %64 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 7
  store i8 %63, i8* %64, align 1
  %65 = load i8, i8* %6, align 1
  %66 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 8
  store i8 %65, i8* %66, align 1
  %67 = load i8, i8* %4, align 1
  %68 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 10
  store i8 %67, i8* %68, align 1
  %69 = load i8, i8* %5, align 1
  %70 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 11
  store i8 %69, i8* %70, align 1
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %72 = call i32 @signal_ce_msg(i8* %71, i32* null)
  ret i32 %72
}

declare dso_local signext i8 @bin2bcd(i8 signext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @signal_ce_msg(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
