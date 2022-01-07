; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_op_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_op_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sn_hwperf_op_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SN_HWPERF_ARG_CPU_MASK = common dso_local global i32 0, align 4
@SN_HWPERF_ARG_USE_IPI_MASK = common dso_local global i32 0, align 4
@SN_HWPERF_ARG_OBJID_MASK = common dso_local global i32 0, align 4
@SN_HWPERF_ARG_ANY_CPU = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn_hwperf_op_info*)* @sn_hwperf_op_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_hwperf_op_cpu(%struct.sn_hwperf_op_info* %0) #0 {
  %2 = alloca %struct.sn_hwperf_op_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sn_hwperf_op_info* %0, %struct.sn_hwperf_op_info** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sn_hwperf_op_info*, %struct.sn_hwperf_op_info** %2, align 8
  %8 = getelementptr inbounds %struct.sn_hwperf_op_info, %struct.sn_hwperf_op_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SN_HWPERF_ARG_CPU_MASK, align 4
  %13 = and i32 %11, %12
  %14 = ashr i32 %13, 32
  store i32 %14, i32* %3, align 4
  %15 = load %struct.sn_hwperf_op_info*, %struct.sn_hwperf_op_info** %2, align 8
  %16 = getelementptr inbounds %struct.sn_hwperf_op_info, %struct.sn_hwperf_op_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SN_HWPERF_ARG_USE_IPI_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @SN_HWPERF_ARG_OBJID_MASK, align 4
  %23 = load %struct.sn_hwperf_op_info*, %struct.sn_hwperf_op_info** %2, align 8
  %24 = getelementptr inbounds %struct.sn_hwperf_op_info, %struct.sn_hwperf_op_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SN_HWPERF_ARG_ANY_CPU, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @nr_cpu_ids, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @cpu_online(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %80

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SN_HWPERF_ARG_ANY_CPU, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (...) @get_cpu()
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44
  %53 = load %struct.sn_hwperf_op_info*, %struct.sn_hwperf_op_info** %2, align 8
  %54 = call i32 @sn_hwperf_call_sal(%struct.sn_hwperf_op_info* %53)
  br label %76

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.sn_hwperf_op_info*, %struct.sn_hwperf_op_info** %2, align 8
  %61 = call i32 @smp_call_function_single(i32 %59, i32 (%struct.sn_hwperf_op_info*)* @sn_hwperf_call_sal, %struct.sn_hwperf_op_info* %60, i32 1)
  br label %75

62:                                               ; preds = %55
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @cpumask_of_cpu(i32 %67)
  %69 = call i32 @set_cpus_allowed(%struct.TYPE_5__* %66, i32 %68)
  %70 = load %struct.sn_hwperf_op_info*, %struct.sn_hwperf_op_info** %2, align 8
  %71 = call i32 @sn_hwperf_call_sal(%struct.sn_hwperf_op_info* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @set_cpus_allowed(%struct.TYPE_5__* %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %58
  br label %76

76:                                               ; preds = %75, %52
  %77 = load %struct.sn_hwperf_op_info*, %struct.sn_hwperf_op_info** %2, align 8
  %78 = getelementptr inbounds %struct.sn_hwperf_op_info, %struct.sn_hwperf_op_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %40
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @sn_hwperf_call_sal(%struct.sn_hwperf_op_info*) #1

declare dso_local i32 @smp_call_function_single(i32, i32 (%struct.sn_hwperf_op_info*)*, %struct.sn_hwperf_op_info*, i32) #1

declare dso_local i32 @set_cpus_allowed(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cpumask_of_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
