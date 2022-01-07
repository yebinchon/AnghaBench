; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_adjust_jiffies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_adjust_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_freqs = type { i32, i64, i64 }

@CPUFREQ_CONST_LOOPS = common dso_local global i32 0, align 4
@l_p_j_ref_freq = common dso_local global i64 0, align 8
@loops_per_jiffy = common dso_local global i32 0, align 4
@l_p_j_ref = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"saving %lu as reference value for loops_per_jiffy; freq is %u kHz\0A\00", align 1
@CPUFREQ_PRECHANGE = common dso_local global i64 0, align 8
@CPUFREQ_POSTCHANGE = common dso_local global i64 0, align 8
@CPUFREQ_RESUMECHANGE = common dso_local global i64 0, align 8
@CPUFREQ_SUSPENDCHANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"scaling loops_per_jiffy to %lu for frequency %u kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.cpufreq_freqs*)* @adjust_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_jiffies(i64 %0, %struct.cpufreq_freqs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cpufreq_freqs*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.cpufreq_freqs* %1, %struct.cpufreq_freqs** %4, align 8
  %5 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %6 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CPUFREQ_CONST_LOOPS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %67

12:                                               ; preds = %2
  %13 = load i64, i64* @l_p_j_ref_freq, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @loops_per_jiffy, align 4
  store i32 %16, i32* @l_p_j_ref, align 4
  %17 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %18 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* @l_p_j_ref_freq, align 8
  %20 = load i32, i32* @l_p_j_ref, align 4
  %21 = load i64, i64* @l_p_j_ref_freq, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %15, %12
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @CPUFREQ_PRECHANGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %29 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %32 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %55, label %35

35:                                               ; preds = %27, %23
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @CPUFREQ_POSTCHANGE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %41 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %44 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39, %35
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @CPUFREQ_RESUMECHANGE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @CPUFREQ_SUSPENDCHANGE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51, %47, %39, %27
  %56 = load i32, i32* @l_p_j_ref, align 4
  %57 = load i64, i64* @l_p_j_ref_freq, align 8
  %58 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %59 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @cpufreq_scale(i32 %56, i64 %57, i64 %60)
  store i32 %61, i32* @loops_per_jiffy, align 4
  %62 = load i32, i32* @loops_per_jiffy, align 4
  %63 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %4, align 8
  %64 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %11, %55, %51
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i64) #1

declare dso_local i32 @cpufreq_scale(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
