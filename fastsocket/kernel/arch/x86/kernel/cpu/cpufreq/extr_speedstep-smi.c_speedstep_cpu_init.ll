; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-smi.c_speedstep_cpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-smi.c_speedstep_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cpufreq_policy = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"fails in aquiring ownership of a SMI interface.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@speedstep_freqs = common dso_local global %struct.TYPE_6__* null, align 8
@SPEEDSTEP_LOW = common dso_local global i64 0, align 8
@SPEEDSTEP_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"could not detect low and high frequencies by SMI call.\0A\00", align 1
@speedstep_processor = common dso_local global i32 0, align 4
@speedstep_set_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"could not detect two different speeds -- aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"workaround worked.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"currently at %s speed setting - %i MHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@CPUFREQ_ETERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @speedstep_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %92

16:                                               ; preds = %1
  %17 = call i32 (...) @speedstep_smi_ownership()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %92

24:                                               ; preds = %16
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speedstep_freqs, align 8
  %26 = load i64, i64* @SPEEDSTEP_LOW, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speedstep_freqs, align 8
  %30 = load i64, i64* @SPEEDSTEP_HIGH, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @speedstep_smi_get_freqs(i32* %33, i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %24
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @speedstep_processor, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @speedstep_get_freqs(i32 %40, i32* %41, i32* %42, i32* null, i32* @speedstep_set_state)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %92

49:                                               ; preds = %38
  %50 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %24
  %53 = call i32 (...) @speedstep_get_state()
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speedstep_freqs, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speedstep_freqs, align 8
  %62 = load i64, i64* @SPEEDSTEP_LOW, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %60, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %69 = load i32, i32* %5, align 4
  %70 = udiv i32 %69, 1000
  %71 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %68, i32 %70)
  %72 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  %73 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %74 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %78 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speedstep_freqs, align 8
  %81 = call i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %79, %struct.TYPE_6__* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %52
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %92

86:                                               ; preds = %52
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speedstep_freqs, align 8
  %88 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %89 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__* %87, i64 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %86, %84, %46, %20, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @speedstep_smi_ownership(...) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @speedstep_smi_get_freqs(i32*, i32*) #1

declare dso_local i32 @speedstep_get_freqs(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @speedstep_get_state(...) #1

declare dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy*, %struct.TYPE_6__*) #1

declare dso_local i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
