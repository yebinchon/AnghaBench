; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_setup_perfctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_setup_perfctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 (i64)*, i32, i32 }
%struct.perf_event = type { %struct.hw_perf_event, %struct.perf_event_attr }
%struct.hw_perf_event = type { i32, i32, i64, i32 }
%struct.perf_event_attr = type { i64, i64, i32, i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@PERF_TYPE_HW_CACHE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PERF_COUNT_HW_BRANCH_INSTRUCTIONS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_setup_perfctr(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  store %struct.perf_event_attr* %8, %struct.perf_event_attr** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = call i32 @is_sampling_event(%struct.perf_event* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 3
  %25 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @local64_set(i32* %24, i32 %27)
  br label %36

29:                                               ; preds = %1
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 4), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %116

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PERF_TYPE_RAW, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %116

43:                                               ; preds = %36
  %44 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %45 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = call i32 @set_ext_hw_attr(%struct.hw_perf_event* %50, %struct.perf_event* %51)
  store i32 %52, i32* %2, align 4
  br label %116

53:                                               ; preds = %43
  %54 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %55 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %116

62:                                               ; preds = %53
  %63 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 2), align 8
  %64 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %65 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 %63(i64 %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %116

73:                                               ; preds = %62
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %116

79:                                               ; preds = %73
  %80 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %81 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PERF_COUNT_HW_BRANCH_INSTRUCTIONS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %87 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %85
  %91 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %92 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 3), align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %116

101:                                              ; preds = %95
  %102 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %103 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @EOPNOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %116

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %90, %85, %79
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %113 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = or i64 %114, %111
  store i64 %115, i64* %113, align 8
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %106, %98, %76, %70, %59, %49, %42, %32
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @set_ext_hw_attr(%struct.hw_perf_event*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
