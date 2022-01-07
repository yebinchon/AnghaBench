; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_mac_hwclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_mac_hwclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i64 }

@macintosh_config = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_hwclk(i32 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macintosh_config, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 132, label %12
    i32 130, label %12
    i32 131, label %14
    i32 129, label %16
    i32 128, label %16
    i32 133, label %18
  ]

12:                                               ; preds = %8, %8
  %13 = call i64 (...) @via_read_time()
  store i64 %13, i64* %5, align 8
  br label %21

14:                                               ; preds = %8
  %15 = call i64 (...) @maciisi_read_time()
  store i64 %15, i64* %5, align 8
  br label %21

16:                                               ; preds = %8, %8
  %17 = call i64 (...) @pmu_read_time()
  store i64 %17, i64* %5, align 8
  br label %21

18:                                               ; preds = %8
  %19 = call i64 (...) @cuda_read_time()
  store i64 %19, i64* %5, align 8
  br label %21

20:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %20, %18, %16, %14, %12
  %22 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 5
  %27 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 3
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 2
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 1
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 0
  %37 = call i32 @unmktime(i64 %24, i32 0, i32* %26, i32* %28, i32* %30, i32* %32, i32* %34, i32* %36)
  br label %76

38:                                               ; preds = %2
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1900
  %43 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @mktime(i32 %42, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  store i64 %59, i64* %5, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macintosh_config, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %75 [
    i32 132, label %63
    i32 130, label %63
    i32 133, label %66
    i32 129, label %69
    i32 128, label %69
    i32 131, label %72
  ]

63:                                               ; preds = %38, %38
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @via_write_time(i64 %64)
  br label %75

66:                                               ; preds = %38
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @cuda_write_time(i64 %67)
  br label %75

69:                                               ; preds = %38, %38
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @pmu_write_time(i64 %70)
  br label %75

72:                                               ; preds = %38
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @maciisi_write_time(i64 %73)
  br label %75

75:                                               ; preds = %72, %38, %69, %66, %63
  br label %76

76:                                               ; preds = %75, %21
  ret i32 0
}

declare dso_local i64 @via_read_time(...) #1

declare dso_local i64 @maciisi_read_time(...) #1

declare dso_local i64 @pmu_read_time(...) #1

declare dso_local i64 @cuda_read_time(...) #1

declare dso_local i32 @unmktime(i64, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @mktime(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @via_write_time(i64) #1

declare dso_local i32 @cuda_write_time(i64) #1

declare dso_local i32 @pmu_write_time(i64) #1

declare dso_local i32 @maciisi_write_time(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
