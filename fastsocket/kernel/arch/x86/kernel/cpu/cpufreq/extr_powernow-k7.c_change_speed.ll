; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k7.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k7.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.cpufreq_freqs = type { i32, i32, i64 }
%union.msr_fidvidstatus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@powernow_table = common dso_local global %struct.TYPE_4__* null, align 8
@MSR_K7_FID_VID_STATUS = common dso_local global i32 0, align 4
@fsb = common dso_local global i32 0, align 4
@fid_codes = common dso_local global i32* null, align 8
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@have_a0 = common dso_local global i32 0, align 4
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_freqs, align 8
  %6 = alloca %union.msr_fidvidstatus, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernow_table, align 8
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernow_table, align 8
  %16 = load i32, i32* %2, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 65280
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %4, align 4
  %23 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %5, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @MSR_K7_FID_VID_STATUS, align 4
  %25 = bitcast %union.msr_fidvidstatus* %6 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rdmsrl(i32 %24, i32 %26)
  %28 = bitcast %union.msr_fidvidstatus* %6 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @fsb, align 4
  %32 = load i32*, i32** @fid_codes, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %31, %36
  %38 = sdiv i32 %37, 10
  %39 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernow_table, align 8
  %41 = load i32, i32* %2, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %48 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %5, i32 %47)
  %49 = load i32, i32* @have_a0, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = call i32 (...) @local_irq_disable()
  br label %53

53:                                               ; preds = %51, %1
  %54 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @change_FID(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @change_VID(i32 %62)
  br label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @change_VID(i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @change_FID(i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* @have_a0, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (...) @local_irq_enable()
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %76 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %5, i32 %75)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @change_FID(i32) #1

declare dso_local i32 @change_VID(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
