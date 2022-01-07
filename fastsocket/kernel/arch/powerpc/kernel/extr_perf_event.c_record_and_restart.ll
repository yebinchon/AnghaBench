; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event.c_record_and_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event.c_record_and_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i32, i32, i32 }
%struct.pt_regs = type { i32 }
%struct.perf_sample_data = type { i64, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i64, %struct.pt_regs*)* @record_and_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_and_restart(%struct.perf_event* %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_sample_data, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PERF_HES_STOPPED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @write_pmc(i32 %28, i64 0)
  br label %132

30:                                               ; preds = %3
  %31 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = call i64 @local64_read(i32* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @check_and_compute_delta(i64 %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 2
  %41 = call i32 @local64_add(i64 %38, i32* %40)
  store i64 0, i64* %5, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = call i64 @local64_read(i32* %44)
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %50, %30
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %69 = call i32 @siar_valid(%struct.pt_regs* %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %75 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %56
  %78 = load i64, i64* %10, align 8
  %79 = icmp slt i64 %78, 2147483648
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = sub nsw i64 2147483648, %81
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %53
  %85 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %86 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @write_pmc(i32 %88, i64 %89)
  %91 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %92 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @local64_set(i32* %93, i64 %94)
  %96 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %97 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @local64_set(i32* %98, i64 %99)
  %101 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %102 = call i32 @perf_event_update_userpage(%struct.perf_event* %101)
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %84
  %106 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %12, i64 -1)
  %107 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %108 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %12, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  %112 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %113 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %105
  %120 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %121 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %12, i32 0, i32 1
  %122 = call i32 @perf_get_data_addr(%struct.pt_regs* %120, i32* %121)
  br label %123

123:                                              ; preds = %119, %105
  %124 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %125 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %126 = call i64 @perf_event_overflow(%struct.perf_event* %124, %struct.perf_sample_data* %12, %struct.pt_regs* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %130 = call i32 @power_pmu_stop(%struct.perf_event* %129, i32 0)
  br label %131

131:                                              ; preds = %128, %123
  br label %132

132:                                              ; preds = %24, %131, %84
  ret void
}

declare dso_local i32 @write_pmc(i32, i64) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @check_and_compute_delta(i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @siar_valid(%struct.pt_regs*) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i64) #1

declare dso_local i32 @perf_get_data_addr(%struct.pt_regs*, i32*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @power_pmu_stop(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
