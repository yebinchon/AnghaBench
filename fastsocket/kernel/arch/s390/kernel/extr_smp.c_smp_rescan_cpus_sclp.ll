; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_rescan_cpus_sclp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_rescan_cpus_sclp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_cpu_info = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smp_cpu_type = common dso_local global i64 0, align 8
@__cpu_logical_map = common dso_local global i32* null, align 8
@POLARIZATION_UNKNWN = common dso_local global i32 0, align 4
@smp_cpu_polarization = common dso_local global i32* null, align 8
@cpu_present_map = common dso_local global i32 0, align 4
@CPU_STATE_STANDBY = common dso_local global i32 0, align 4
@smp_cpu_state = common dso_local global i32* null, align 8
@CPU_STATE_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smp_rescan_cpus_sclp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_rescan_cpus_sclp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sclp_cpu_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i32 @cpumask_first(i32* %3)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sclp_cpu_info* @kmalloc(i32 24, i32 %15)
  store %struct.sclp_cpu_info* %16, %struct.sclp_cpu_info** %4, align 8
  %17 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %18 = icmp ne %struct.sclp_cpu_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %112

22:                                               ; preds = %14
  %23 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %24 = call i32 @sclp_get_cpu_info(%struct.sclp_cpu_info* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %108

28:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %104, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %32 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %107

35:                                               ; preds = %29
  %36 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %37 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %42 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @smp_cpu_type, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %104

52:                                               ; preds = %40, %35
  %53 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %54 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @cpu_known(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %104

65:                                               ; preds = %52
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** @__cpu_logical_map, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @POLARIZATION_UNKNWN, align 4
  %72 = load i32*, i32** @smp_cpu_polarization, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @cpu_present_map, align 4
  %78 = call i32 @cpu_set(i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %81 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %65
  %85 = load i32, i32* @CPU_STATE_STANDBY, align 4
  %86 = load i32*, i32** @smp_cpu_state, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %96

90:                                               ; preds = %65
  %91 = load i32, i32* @CPU_STATE_CONFIGURED, align 4
  %92 = load i32*, i32** @smp_cpu_state, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %84
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @cpumask_next(i32 %97, i32* %3)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @nr_cpu_ids, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %107

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %64, %51
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %29

107:                                              ; preds = %102, %29
  br label %108

108:                                              ; preds = %107, %27
  %109 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %4, align 8
  %110 = call i32 @kfree(%struct.sclp_cpu_info* %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %19, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local %struct.sclp_cpu_info* @kmalloc(i32, i32) #1

declare dso_local i32 @sclp_get_cpu_info(%struct.sclp_cpu_info*) #1

declare dso_local i64 @cpu_known(i32) #1

declare dso_local i32 @cpu_set(i32, i32) #1

declare dso_local i32 @cpumask_next(i32, i32*) #1

declare dso_local i32 @kfree(%struct.sclp_cpu_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
