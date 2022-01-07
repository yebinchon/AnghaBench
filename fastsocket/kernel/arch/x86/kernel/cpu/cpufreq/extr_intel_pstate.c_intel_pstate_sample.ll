; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i64, i32, i8*, i8*, i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i8*, i8* }

@MSR_IA32_APERF = common dso_local global i32 0, align 4
@MSR_IA32_MPERF = common dso_local global i32 0, align 4
@SAMPLE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudata*)* @intel_pstate_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_sample(%struct.cpudata* %0) #0 {
  %2 = alloca %struct.cpudata*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.cpudata* %0, %struct.cpudata** %2, align 8
  %7 = call i8* (...) @ktime_get()
  store i8* %7, i8** %3, align 8
  %8 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %9 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @get_cpu_idle_time_us(i32 %10, i32* null)
  store i8* %11, i8** %4, align 8
  %12 = load i32, i32* @MSR_IA32_APERF, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @rdmsrl(i32 %12, i8* %13)
  %15 = load i32, i32* @MSR_IA32_MPERF, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @rdmsrl(i32 %15, i8* %16)
  %18 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %19 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %146

22:                                               ; preds = %1
  %23 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %24 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @SAMPLE_COUNT, align 4
  %28 = srem i32 %26, %27
  %29 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %30 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %32 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %35 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %38 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  store i8* %33, i8** %42, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %45 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %48 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i8* %43, i8** %52, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %55 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @ktime_us_delta(i8* %53, i8* %56)
  %58 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %59 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %62 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 %57, i32* %66, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %69 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 0, %70
  %72 = getelementptr i8, i8* %67, i64 %71
  %73 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %74 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %77 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i8* %72, i8** %81, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %84 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %87 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i8* %82, i8** %91, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %94 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %93, i32 0, i32 5
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %97 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i8* %92, i8** %101, align 8
  %102 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %103 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %106 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %105, i32 0, i32 5
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %109 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = ptrtoint i8* %104 to i64
  %117 = sub i64 %115, %116
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %113, align 8
  %119 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %120 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %123 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %122, i32 0, i32 5
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %126 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = ptrtoint i8* %121 to i64
  %134 = sub i64 %132, %133
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %130, align 8
  %136 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %137 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %138 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %137, i32 0, i32 5
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %141 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %143
  %145 = call i32 @intel_pstate_calc_busy(%struct.cpudata* %136, %struct.TYPE_2__* %144)
  br label %146

146:                                              ; preds = %22, %1
  %147 = load i8*, i8** %3, align 8
  %148 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %149 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %148, i32 0, i32 4
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %153 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %156 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %159 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  ret void
}

declare dso_local i8* @ktime_get(...) #1

declare dso_local i8* @get_cpu_idle_time_us(i32, i32*) #1

declare dso_local i32 @rdmsrl(i32, i8*) #1

declare dso_local i32 @ktime_us_delta(i8*, i8*) #1

declare dso_local i32 @intel_pstate_calc_busy(%struct.cpudata*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
