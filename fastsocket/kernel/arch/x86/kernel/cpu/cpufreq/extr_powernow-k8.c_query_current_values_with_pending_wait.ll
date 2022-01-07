; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_query_current_values_with_pending_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_query_current_values_with_pending_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.powernow_k8_data = type { i32, i32, i32, i32 }

@cpu_family = common dso_local global i64 0, align 8
@CPU_HW_PSTATE = common dso_local global i64 0, align 8
@MSR_PSTATE_STATUS = common dso_local global i32 0, align 4
@HW_PSTATE_MASK = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HW_PSTATE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"detected change pending stuck\0A\00", align 1
@MSR_FIDVID_STATUS = common dso_local global i32 0, align 4
@MSR_S_LO_CHANGE_PENDING = common dso_local global i32 0, align 4
@MSR_S_HI_CURRENT_VID = common dso_local global i32 0, align 4
@MSR_S_LO_CURRENT_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*)* @query_current_values_with_pending_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powernow_k8_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @cpu_family, align 8
  %8 = load i64, i64* @CPU_HW_PSTATE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @MSR_PSTATE_STATUS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @rdmsr(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @HW_PSTATE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %20 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %23, label %33

23:                                               ; preds = %10
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %26 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @HW_PSTATE_0, align 4
  %31 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %32 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %23, %10
  store i32 0, i32* %2, align 4
  br label %62

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %46, %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = icmp sgt i32 %36, 10000
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %62

41:                                               ; preds = %35
  %42 = load i32, i32* @MSR_FIDVID_STATUS, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @rdmsr(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MSR_S_LO_CHANGE_PENDING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %35, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MSR_S_HI_CURRENT_VID, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %56 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @MSR_S_LO_CURRENT_FID, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %61 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %51, %39, %33
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
