; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-centrino.c_extract_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-centrino.c_extract_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@centrino_cpu = common dso_local global i32 0, align 4
@cpu_ids = common dso_local global %struct.TYPE_5__* null, align 8
@CPU_BANIAS = common dso_local global i64 0, align 8
@CPU_DOTHAN_A1 = common dso_local global i64 0, align 8
@CPU_DOTHAN_B0 = common dso_local global i64 0, align 8
@centrino_model = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @extract_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_clock(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @centrino_cpu, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.TYPE_5__* @per_cpu(i32 %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_ids, align 8
  %13 = load i64, i64* @CPU_BANIAS, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %13
  %15 = icmp eq %struct.TYPE_5__* %11, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @centrino_cpu, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.TYPE_5__* @per_cpu(i32 %17, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_ids, align 8
  %21 = load i64, i64* @CPU_DOTHAN_A1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = icmp eq %struct.TYPE_5__* %19, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @centrino_cpu, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_5__* @per_cpu(i32 %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_ids, align 8
  %29 = load i64, i64* @CPU_DOTHAN_B0, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = icmp eq %struct.TYPE_5__* %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24, %16, %3
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = mul i32 %36, 100000
  store i32 %37, i32* %4, align 4
  br label %113

38:                                               ; preds = %24
  %39 = load i32, i32* @centrino_model, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.TYPE_5__* @per_cpu(i32 %39, i32 %40)
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @centrino_model, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.TYPE_5__* @per_cpu(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %38
  store i32 0, i32* %4, align 4
  br label %113

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 65535
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %93, %51
  %55 = load i32, i32* @centrino_model, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.TYPE_5__* @per_cpu(i32 %55, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %54
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @centrino_model, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.TYPE_5__* @per_cpu(i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %68, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %67
  %81 = load i32, i32* @centrino_model, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call %struct.TYPE_5__* @per_cpu(i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %113

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %54

96:                                               ; preds = %54
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* @centrino_model, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call %struct.TYPE_5__* @per_cpu(i32 %100, i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %99, %80, %50, %32
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_5__* @per_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
