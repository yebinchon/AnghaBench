; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_new_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_new_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { i32 }

@wf_smu_all_controls_ok = common dso_local global i32 0, align 4
@fan_cpu_main = common dso_local global %struct.wf_control* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"cpu-fan\00", align 1
@fan_system = common dso_local global %struct.wf_control* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"system-fan\00", align 1
@cpufreq_clamp = common dso_local global %struct.wf_control* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"cpufreq-clamp\00", align 1
@wf_smu_mach_model = common dso_local global i32 0, align 4
@fan_hd = common dso_local global %struct.wf_control* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"drive-bay-fan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_control*)* @wf_smu_new_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_smu_new_control(%struct.wf_control* %0) #0 {
  %2 = alloca %struct.wf_control*, align 8
  store %struct.wf_control* %0, %struct.wf_control** %2, align 8
  %3 = load i32, i32* @wf_smu_all_controls_ok, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %97

6:                                                ; preds = %1
  %7 = load %struct.wf_control*, %struct.wf_control** @fan_cpu_main, align 8
  %8 = icmp eq %struct.wf_control* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %11 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcmp(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %17 = call i64 @wf_get_control(%struct.wf_control* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %20, %struct.wf_control** @fan_cpu_main, align 8
  br label %21

21:                                               ; preds = %19, %15
  br label %22

22:                                               ; preds = %21, %9, %6
  %23 = load %struct.wf_control*, %struct.wf_control** @fan_system, align 8
  %24 = icmp eq %struct.wf_control* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %27 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %33 = call i64 @wf_get_control(%struct.wf_control* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %36, %struct.wf_control** @fan_system, align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %25, %22
  %39 = load %struct.wf_control*, %struct.wf_control** @cpufreq_clamp, align 8
  %40 = icmp eq %struct.wf_control* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %43 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcmp(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %49 = call i64 @wf_get_control(%struct.wf_control* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %52, %struct.wf_control** @cpufreq_clamp, align 8
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %41, %38
  %55 = load i32, i32* @wf_smu_mach_model, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.wf_control*, %struct.wf_control** @fan_system, align 8
  %59 = icmp ne %struct.wf_control* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.wf_control*, %struct.wf_control** @fan_cpu_main, align 8
  %62 = icmp ne %struct.wf_control* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.wf_control*, %struct.wf_control** @cpufreq_clamp, align 8
  %65 = icmp ne %struct.wf_control* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* @wf_smu_all_controls_ok, align 4
  br label %67

67:                                               ; preds = %66, %63, %60, %57
  br label %97

68:                                               ; preds = %54
  %69 = load %struct.wf_control*, %struct.wf_control** @fan_hd, align 8
  %70 = icmp eq %struct.wf_control* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %73 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcmp(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %79 = call i64 @wf_get_control(%struct.wf_control* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %82, %struct.wf_control** @fan_hd, align 8
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %71, %68
  %85 = load %struct.wf_control*, %struct.wf_control** @fan_system, align 8
  %86 = icmp ne %struct.wf_control* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load %struct.wf_control*, %struct.wf_control** @fan_hd, align 8
  %89 = icmp ne %struct.wf_control* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.wf_control*, %struct.wf_control** @fan_cpu_main, align 8
  %92 = icmp ne %struct.wf_control* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.wf_control*, %struct.wf_control** @cpufreq_clamp, align 8
  %95 = icmp ne %struct.wf_control* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* @wf_smu_all_controls_ok, align 4
  br label %97

97:                                               ; preds = %5, %67, %96, %93, %90, %87, %84
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @wf_get_control(%struct.wf_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
