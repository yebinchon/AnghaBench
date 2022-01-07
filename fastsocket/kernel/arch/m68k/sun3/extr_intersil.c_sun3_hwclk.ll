; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_intersil.c_sun3_hwclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_intersil.c_sun3_hwclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rtc_time = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.intersil_dt = type { i32, i64, i32, i32, i64, i32, i32, i64 }

@intersil_clock = common dso_local global %struct.TYPE_2__* null, align 8
@STOP_VAL = common dso_local global i32 0, align 4
@START_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun3_hwclk(i32 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.intersil_dt*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intersil_clock, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = bitcast i32* %8 to %struct.intersil_dt*
  store %struct.intersil_dt* %9, %struct.intersil_dt** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @STOP_VAL, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intersil_clock, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %2
  %18 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %19 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %18, i32 0, i32 7
  store volatile i64 0, i64* %19, align 8
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %24 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %23, i32 0, i32 6
  store volatile i32 %22, i32* %24, align 4
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %29 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %28, i32 0, i32 5
  store volatile i32 %27, i32* %29, align 8
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %34 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %33, i32 0, i32 4
  store volatile i64 %32, i64* %34, align 8
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %39 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %38, i32 0, i32 3
  store volatile i32 %37, i32* %39, align 4
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %44 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %43, i32 0, i32 2
  store volatile i32 %42, i32* %44, align 8
  %45 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 68
  %49 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %50 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %49, i32 0, i32 1
  store volatile i64 %48, i64* %50, align 8
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %55 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %54, i32 0, i32 0
  store volatile i32 %53, i32* %55, align 8
  br label %98

56:                                               ; preds = %2
  %57 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %58 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %57, i32 0, i32 7
  %59 = load volatile i64, i64* %58, align 8
  %60 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %63 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %62, i32 0, i32 6
  %64 = load volatile i32, i32* %63, align 4
  %65 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %68 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %67, i32 0, i32 5
  %69 = load volatile i32, i32* %68, align 8
  %70 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %73 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %72, i32 0, i32 4
  %74 = load volatile i64, i64* %73, align 8
  %75 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %78 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %77, i32 0, i32 3
  %79 = load volatile i32, i32* %78, align 4
  %80 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %83 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %82, i32 0, i32 2
  %84 = load volatile i32, i32* %83, align 8
  %85 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %88 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %87, i32 0, i32 1
  %89 = load volatile i64, i64* %88, align 8
  %90 = add nsw i64 %89, 68
  %91 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.intersil_dt*, %struct.intersil_dt** %5, align 8
  %94 = getelementptr inbounds %struct.intersil_dt, %struct.intersil_dt* %93, i32 0, i32 0
  %95 = load volatile i32, i32* %94, align 8
  %96 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %56, %17
  %99 = load i32, i32* @START_VAL, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intersil_clock, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @local_irq_restore(i64 %102)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
