; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_32.c_do_set_cpu_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_32.c_do_set_cpu_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_freqs = type { i64, i64, i32 }

@do_set_cpu_speed.prev_l3cr = internal global i64 0, align 8
@cur_freq = common dso_local global i64 0, align 8
@CPUFREQ_HIGH = common dso_local global i32 0, align 4
@hi_freq = common dso_local global i8* null, align 8
@low_freq = common dso_local global i8* null, align 8
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@CPUFREQ_LOW = common dso_local global i32 0, align 4
@CPU_FTR_L3CR = common dso_local global i32 0, align 4
@L3CR_L3E = common dso_local global i64 0, align 8
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_set_cpu_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_cpu_speed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_freqs, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @cur_freq, align 8
  %9 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %6, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CPUFREQ_HIGH, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @hi_freq, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** @low_freq, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8* [ %14, %13 ], [ %16, %15 ]
  %19 = ptrtoint i8* %18 to i64
  %20 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %6, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = call i32 (...) @smp_processor_id()
  %22 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %6, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %97

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %34 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %6, i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CPUFREQ_LOW, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* @CPU_FTR_L3CR, align 4
  %41 = call i64 @cpu_has_feature(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = call i64 (...) @_get_L3CR()
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @L3CR_L3E, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  store i64 %50, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %51 = call i32 @_set_L3CR(i64 0)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %39, %35
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @CPUFREQ_LOW, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @set_speed_proc(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CPUFREQ_HIGH, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = load i32, i32* @CPU_FTR_L3CR, align 4
  %64 = call i64 @cpu_has_feature(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = call i64 (...) @_get_L3CR()
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %69 = load i64, i64* @L3CR_L3E, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i64, i64* @do_set_cpu_speed.prev_l3cr, align 8
  %78 = call i32 @_set_L3CR(i64 %77)
  br label %79

79:                                               ; preds = %76, %72, %66
  br label %80

80:                                               ; preds = %79, %62, %53
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %85 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %6, i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @CPUFREQ_HIGH, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i8*, i8** @hi_freq, align 8
  br label %94

92:                                               ; preds = %86
  %93 = load i8*, i8** @low_freq, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i8* [ %91, %90 ], [ %93, %92 ]
  %96 = ptrtoint i8* %95 to i64
  store i64 %96, i64* @cur_freq, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %28
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @_get_L3CR(...) #1

declare dso_local i32 @_set_L3CR(i64) #1

declare dso_local i32 @set_speed_proc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
