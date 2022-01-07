; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_cpufreq.c_bfin_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_cpufreq.c_bfin_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i64, i32, i64 }

@bfin_freq_table = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cpufreq: changing cclk to %lu; target = %u, oldfreq = %u\0A\00", align 1
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@SSEL = common dso_local global i32 0, align 4
@dpm_state_table = common dso_local global %struct.TYPE_4__* null, align 8
@__bfin_cycles_mod = common dso_local global i32 0, align 4
@__bfin_cycles_off = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cpufreq: done\0A\00", align 1
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @bfin_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cpufreq_freqs, align 8
  %14 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bfin_freq_table, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %15, %struct.TYPE_5__* %16, i32 %17, i32 %18, i32* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bfin_freq_table, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = call i32 @bfin_getfreq_khz(i32 0)
  %32 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %13, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %13, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %13, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %13, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %37, i32 %39)
  %41 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %42 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %13, i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @local_irq_save_hw(i64 %43)
  %45 = call i32 (...) @bfin_read_PLL_DIV()
  %46 = load i32, i32* @SSEL, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpm_state_table, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %47, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dpm_state_table, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @bfin_write_PLL_DIV(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @bfin_write_TSCALE(i32 %63)
  %65 = call i32 (...) @get_cycles()
  store i32 %65, i32* %14, align 4
  %66 = call i32 (...) @SSYNC()
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 10
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @__bfin_cycles_mod, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %72, %73
  %75 = sub nsw i32 %71, %74
  %76 = load i32, i32* @__bfin_cycles_off, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* @__bfin_cycles_off, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* @__bfin_cycles_mod, align 4
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @local_irq_restore_hw(i64 %79)
  %81 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %83 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %13, i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %24, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @bfin_getfreq_khz(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @local_irq_save_hw(i64) #1

declare dso_local i32 @bfin_read_PLL_DIV(...) #1

declare dso_local i32 @bfin_write_PLL_DIV(i32) #1

declare dso_local i32 @bfin_write_TSCALE(i32) #1

declare dso_local i32 @get_cycles(...) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @local_irq_restore_hw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
