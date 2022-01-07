; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_powernow_k8_acpi_pst_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_powernow_k8_acpi_pst_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@cpu_family = common dso_local global i64 0, align 8
@CPU_HW_PSTATE = common dso_local global i64 0, align 8
@IRT_SHIFT = common dso_local global i32 0, align 4
@IRT_MASK = common dso_local global i32 0, align 4
@RVO_SHIFT = common dso_local global i32 0, align 4
@RVO_MASK = common dso_local global i32 0, align 4
@EXT_TYPE_SHIFT = common dso_local global i32 0, align 4
@EXT_TYPE_MASK = common dso_local global i32 0, align 4
@PLL_L_SHIFT = common dso_local global i32 0, align 4
@PLL_L_MASK = common dso_local global i32 0, align 4
@MVS_SHIFT = common dso_local global i32 0, align 4
@MVS_MASK = common dso_local global i32 0, align 4
@VST_SHIFT = common dso_local global i32 0, align 4
@VST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powernow_k8_data*, i32)* @powernow_k8_acpi_pst_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powernow_k8_acpi_pst_values(%struct.powernow_k8_data* %0, i32 %1) #0 {
  %3 = alloca %struct.powernow_k8_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %7 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @cpu_family, align 8
  %13 = load i64, i64* @CPU_HW_PSTATE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %69

16:                                               ; preds = %11
  %17 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %18 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IRT_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @IRT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %32 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RVO_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* @RVO_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %39 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @EXT_TYPE_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @EXT_TYPE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %46 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PLL_L_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load i32, i32* @PLL_L_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %53 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MVS_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* @MVS_MASK, align 4
  %58 = and i32 %56, %57
  %59 = shl i32 1, %58
  %60 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %61 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VST_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = load i32, i32* @VST_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %68 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
