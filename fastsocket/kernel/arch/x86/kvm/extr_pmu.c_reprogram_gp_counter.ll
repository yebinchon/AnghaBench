; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_gp_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_reprogram_gp_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_PIN_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"kvm pmu: pin control bit is ignored\0A\00", align 1
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_EVENT = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_UMASK = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_EDGE = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INV = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_CMASK = common dso_local global i32 0, align 4
@PERF_COUNT_HW_MAX = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@X86_RAW_EVENT_MASK = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pmc*, i32)* @reprogram_gp_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_gp_counter(%struct.kvm_pmc* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @PERF_TYPE_RAW, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ARCH_PERFMON_EVENTSEL_PIN_CONTROL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @printk_once(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %21 = call i32 @stop_counter(%struct.kvm_pmc* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %28 = call i32 @pmc_enabled(%struct.kvm_pmc* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %16
  br label %90

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ARCH_PERFMON_EVENTSEL_EVENT, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ARCH_PERFMON_EVENTSEL_UMASK, align 4
  %37 = and i32 %35, %36
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ARCH_PERFMON_EVENTSEL_EDGE, align 4
  %41 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INV, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ARCH_PERFMON_EVENTSEL_CMASK, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %31
  %48 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @find_arch_event(i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @PERF_COUNT_HW_MAX, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %47
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PERF_TYPE_RAW, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @X86_RAW_EVENT_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @reprogram_counter(%struct.kvm_pmc* %71, i32 %72, i32 %73, i32 %79, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %70, %30
  ret void
}

declare dso_local i32 @printk_once(i8*) #1

declare dso_local i32 @stop_counter(%struct.kvm_pmc*) #1

declare dso_local i32 @pmc_enabled(%struct.kvm_pmc*) #1

declare dso_local i32 @find_arch_event(i32*, i32, i32) #1

declare dso_local i32 @reprogram_counter(%struct.kvm_pmc*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
