; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_cpum_cf.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_cpum_cf.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event, %struct.perf_event_attr }
%struct.hw_perf_event = type { i64, i32 }
%struct.perf_event_attr = type { i32, i64, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@cpumf_generic_events_user = common dso_local global i64* null, align 8
@cpumf_generic_events_basic = common dso_local global i64* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@PERF_CPUM_CF_MAX_CTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@num_events = common dso_local global i32 0, align 4
@pmc_reserve_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  store %struct.perf_event_attr* %9, %struct.perf_event_attr** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %91 [
    i32 128, label %15
    i32 129, label %37
  ]

15:                                               ; preds = %1
  %16 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %20, %15
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %151

33:                                               ; preds = %25
  %34 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  br label %94

37:                                               ; preds = %1
  %38 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %39 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %37
  %46 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %47 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = load i64*, i64** @cpumf_generic_events_user, align 8
  %53 = call i64 @ARRAY_SIZE(i64* %52)
  %54 = icmp uge i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %151

58:                                               ; preds = %50
  %59 = load i64*, i64** @cpumf_generic_events_user, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  br label %90

63:                                               ; preds = %45, %37
  %64 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %65 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %70 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %151

76:                                               ; preds = %68, %63
  %77 = load i64, i64* %7, align 8
  %78 = load i64*, i64** @cpumf_generic_events_basic, align 8
  %79 = call i64 @ARRAY_SIZE(i64* %78)
  %80 = icmp uge i64 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %151

84:                                               ; preds = %76
  %85 = load i64*, i64** @cpumf_generic_events_basic, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %7, align 8
  br label %89

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %58
  br label %94

91:                                               ; preds = %1
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %151

94:                                               ; preds = %90, %33
  %95 = load i64, i64* %7, align 8
  %96 = icmp eq i64 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %151

100:                                              ; preds = %94
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @PERF_CPUM_CF_MAX_CTR, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %151

107:                                              ; preds = %100
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %110 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @get_counter_set(i64 %111)
  %113 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %114 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %116 = call i32 @validate_event(%struct.hw_perf_event* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %151

121:                                              ; preds = %107
  %122 = call i32 @atomic_inc_not_zero(i32* @num_events)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %121
  %125 = call i32 @mutex_lock(i32* @pmc_reserve_mutex)
  %126 = call i64 @atomic_read(i32* @num_events)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = call i64 (...) @reserve_pmc_hardware()
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %136

134:                                              ; preds = %128, %124
  %135 = call i32 @atomic_inc(i32* @num_events)
  br label %136

136:                                              ; preds = %134, %131
  %137 = call i32 @mutex_unlock(i32* @pmc_reserve_mutex)
  br label %138

138:                                              ; preds = %136, %121
  %139 = load i32, i32* @hw_perf_event_destroy, align 4
  %140 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %141 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %143 = call i32 @validate_ctr_auth(%struct.hw_perf_event* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %138
  %147 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %148 = call i32 @validate_ctr_version(%struct.hw_perf_event* %147)
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %146, %138
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %119, %104, %97, %91, %81, %73, %55, %30
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @get_counter_set(i64) #1

declare dso_local i32 @validate_event(%struct.hw_perf_event*) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @reserve_pmc_hardware(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @validate_ctr_auth(%struct.hw_perf_event*) #1

declare dso_local i32 @validate_ctr_version(%struct.hw_perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
