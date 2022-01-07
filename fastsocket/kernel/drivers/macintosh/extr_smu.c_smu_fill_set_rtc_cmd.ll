; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_fill_set_rtc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_fill_set_rtc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_cmd_buf = type { i32, i32, i32* }
%struct.rtc_time = type { i32, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smu_cmd_buf*, %struct.rtc_time*)* @smu_fill_set_rtc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_fill_set_rtc_cmd(%struct.smu_cmd_buf* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.smu_cmd_buf*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.smu_cmd_buf* %0, %struct.smu_cmd_buf** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %6 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %5, i32 0, i32 0
  store i32 142, i32* %6, align 8
  %7 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %8 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %7, i32 0, i32 1
  store i32 8, i32* %8, align 4
  %9 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %10 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 128, i32* %12, align 4
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @hex2bcd(i64 %15)
  %17 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %18 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @hex2bcd(i64 %23)
  %25 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %26 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %24, i32* %28, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @hex2bcd(i64 %31)
  %33 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %34 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %32, i32* %36, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %41 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %39, i32* %43, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @hex2bcd(i64 %46)
  %48 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %49 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  store i32 %47, i32* %51, align 4
  %52 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @hex2bcd(i64 %54)
  %56 = add nsw i32 %55, 1
  %57 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %58 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  store i32 %56, i32* %60, align 4
  %61 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 100
  %65 = call i32 @hex2bcd(i64 %64)
  %66 = load %struct.smu_cmd_buf*, %struct.smu_cmd_buf** %3, align 8
  %67 = getelementptr inbounds %struct.smu_cmd_buf, %struct.smu_cmd_buf* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 %65, i32* %69, align 4
  ret void
}

declare dso_local i32 @hex2bcd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
