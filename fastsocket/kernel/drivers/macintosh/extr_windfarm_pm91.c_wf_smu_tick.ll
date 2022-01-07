; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm91.c_wf_smu_tick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm91.c_wf_smu_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wf_smu_failure_state = common dso_local global i32 0, align 4
@wf_smu_started = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wf: creating control loops !\0A\00", align 1
@wf_smu_skipping = common dso_local global i32 0, align 4
@wf_smu_drive_fans = common dso_local global i64 0, align 8
@wf_smu_slots_fans = common dso_local global i64 0, align 8
@wf_smu_cpu_fans = common dso_local global i64 0, align 8
@wf_smu_readjust = common dso_local global i32 0, align 4
@cpufreq_clamp = common dso_local global i64 0, align 8
@fan_cpu_main = common dso_local global i64 0, align 8
@fan_cpu_second = common dso_local global i64 0, align 8
@fan_cpu_third = common dso_local global i64 0, align 8
@fan_hd = common dso_local global i64 0, align 8
@fan_slots = common dso_local global i64 0, align 8
@FAILURE_OVERTEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wf_smu_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_smu_tick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @wf_smu_failure_state, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @wf_smu_started, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @wf_smu_create_drive_fans()
  %9 = call i32 (...) @wf_smu_create_slots_fans()
  %10 = call i32 (...) @wf_smu_create_cpu_fans()
  store i32 1, i32* @wf_smu_started, align 4
  br label %11

11:                                               ; preds = %6, %0
  %12 = load i32, i32* @wf_smu_skipping, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @wf_smu_skipping, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* @wf_smu_skipping, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %114

19:                                               ; preds = %14, %11
  store i32 0, i32* @wf_smu_failure_state, align 4
  %20 = load i64, i64* @wf_smu_drive_fans, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @wf_smu_drive_fans, align 8
  %24 = call i32 @wf_smu_drive_fans_tick(i64 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* @wf_smu_slots_fans, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @wf_smu_slots_fans, align 8
  %30 = call i32 @wf_smu_slots_fans_tick(i64 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* @wf_smu_cpu_fans, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @wf_smu_cpu_fans, align 8
  %36 = call i32 @wf_smu_cpu_fans_tick(i64 %35)
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* @wf_smu_readjust, align 4
  %38 = load i32, i32* @wf_smu_failure_state, align 4
  %39 = load i32, i32* %1, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* @wf_smu_failure_state, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %37
  %45 = load i32, i32* %1, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %84, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @cpufreq_clamp, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* @cpufreq_clamp, align 8
  %52 = call i32 @wf_control_set_max(i64 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i64, i64* @fan_cpu_main, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* @fan_cpu_main, align 8
  %58 = call i32 @wf_control_set_max(i64 %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i64, i64* @fan_cpu_second, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* @fan_cpu_second, align 8
  %64 = call i32 @wf_control_set_max(i64 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i64, i64* @fan_cpu_third, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* @fan_cpu_third, align 8
  %70 = call i32 @wf_control_set_max(i64 %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i64, i64* @fan_hd, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* @fan_hd, align 8
  %76 = call i32 @wf_control_set_max(i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* @fan_slots, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* @fan_slots, align 8
  %82 = call i32 @wf_control_set_max(i64 %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %44, %37
  %85 = load i32, i32* @wf_smu_failure_state, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %1, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i64, i64* @cpufreq_clamp, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* @cpufreq_clamp, align 8
  %95 = call i32 @wf_control_set_min(i64 %94)
  br label %96

96:                                               ; preds = %93, %90
  store i32 1, i32* @wf_smu_readjust, align 4
  br label %97

97:                                               ; preds = %96, %87, %84
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* @FAILURE_OVERTEMP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (...) @wf_set_overtemp()
  store i32 2, i32* @wf_smu_skipping, align 4
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* %2, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @FAILURE_OVERTEMP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (...) @wf_clear_overtemp()
  br label %114

114:                                              ; preds = %18, %112, %107, %104
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @wf_smu_create_drive_fans(...) #1

declare dso_local i32 @wf_smu_create_slots_fans(...) #1

declare dso_local i32 @wf_smu_create_cpu_fans(...) #1

declare dso_local i32 @wf_smu_drive_fans_tick(i64) #1

declare dso_local i32 @wf_smu_slots_fans_tick(i64) #1

declare dso_local i32 @wf_smu_cpu_fans_tick(i64) #1

declare dso_local i32 @wf_control_set_max(i64) #1

declare dso_local i32 @wf_control_set_min(i64) #1

declare dso_local i32 @wf_set_overtemp(...) #1

declare dso_local i32 @wf_clear_overtemp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
