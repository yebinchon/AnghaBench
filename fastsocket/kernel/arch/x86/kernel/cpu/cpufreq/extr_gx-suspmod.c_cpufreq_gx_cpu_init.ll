; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_cpufreq_gx_cpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_cpufreq_gx_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@pci_busclk = common dso_local global i32 0, align 4
@gx_freq_mult = common dso_local global i32* null, align 8
@CX86_DIR1 = common dso_local global i32 0, align 4
@cpu_khz = common dso_local global i32 0, align 4
@stock_freq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cpu max frequency is %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cpu current frequency is %dkHz.\0A\00", align 1
@max_duration = common dso_local global i32 0, align 4
@POLICY_MIN_DIV = common dso_local global i32 0, align 4
@CPUFREQ_ETERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cpufreq_gx_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_gx_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %7 = icmp ne %struct.cpufreq_policy* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %89

16:                                               ; preds = %8
  %17 = load i32, i32* @pci_busclk, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* @pci_busclk, align 4
  %21 = load i32*, i32** @gx_freq_mult, align 8
  %22 = load i32, i32* @CX86_DIR1, align 4
  %23 = call i32 @getCx86(i32 %22)
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %20, %27
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %16
  %30 = load i32, i32* @cpu_khz, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @cpu_khz, align 4
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %29
  %35 = load i32*, i32** @gx_freq_mult, align 8
  %36 = load i32, i32* @CX86_DIR1, align 4
  %37 = call i32 @getCx86(i32 %36)
  %38 = and i32 %37, 15
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 30000, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %32
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* @stock_freq, align 4
  %46 = call i32 @gx_get_cpuspeed(i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %52 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @max_duration, align 4
  %54 = load i32, i32* @POLICY_MIN_DIV, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @max_duration, align 4
  %59 = udiv i32 %57, %58
  %60 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %61 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %68

62:                                               ; preds = %44
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @POLICY_MIN_DIV, align 4
  %65 = udiv i32 %63, %64
  %66 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %67 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %71 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %74 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @max_duration, align 4
  %77 = udiv i32 %75, %76
  %78 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %79 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %83 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  %86 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %87 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %68, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @getCx86(i32) #1

declare dso_local i32 @gx_get_cpuspeed(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
