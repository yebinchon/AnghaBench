; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_new_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_new_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32 }

@wf_smu_all_sensors_ok = common dso_local global i32 0, align 4
@sensor_cpu_power = common dso_local global %struct.wf_sensor* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"cpu-power\00", align 1
@sensor_cpu_temp = common dso_local global %struct.wf_sensor* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"cpu-temp\00", align 1
@sensor_hd_temp = common dso_local global %struct.wf_sensor* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"hd-temp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_sensor*)* @wf_smu_new_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_smu_new_sensor(%struct.wf_sensor* %0) #0 {
  %2 = alloca %struct.wf_sensor*, align 8
  store %struct.wf_sensor* %0, %struct.wf_sensor** %2, align 8
  %3 = load i32, i32* @wf_smu_all_sensors_ok, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %64

6:                                                ; preds = %1
  %7 = load %struct.wf_sensor*, %struct.wf_sensor** @sensor_cpu_power, align 8
  %8 = icmp eq %struct.wf_sensor* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %11 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcmp(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %17 = call i64 @wf_get_sensor(%struct.wf_sensor* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %20, %struct.wf_sensor** @sensor_cpu_power, align 8
  br label %21

21:                                               ; preds = %19, %15
  br label %22

22:                                               ; preds = %21, %9, %6
  %23 = load %struct.wf_sensor*, %struct.wf_sensor** @sensor_cpu_temp, align 8
  %24 = icmp eq %struct.wf_sensor* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %27 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %33 = call i64 @wf_get_sensor(%struct.wf_sensor* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %36, %struct.wf_sensor** @sensor_cpu_temp, align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %25, %22
  %39 = load %struct.wf_sensor*, %struct.wf_sensor** @sensor_hd_temp, align 8
  %40 = icmp eq %struct.wf_sensor* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %43 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcmp(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %49 = call i64 @wf_get_sensor(%struct.wf_sensor* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %52, %struct.wf_sensor** @sensor_hd_temp, align 8
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %41, %38
  %55 = load %struct.wf_sensor*, %struct.wf_sensor** @sensor_cpu_power, align 8
  %56 = icmp ne %struct.wf_sensor* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.wf_sensor*, %struct.wf_sensor** @sensor_cpu_temp, align 8
  %59 = icmp ne %struct.wf_sensor* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.wf_sensor*, %struct.wf_sensor** @sensor_hd_temp, align 8
  %62 = icmp ne %struct.wf_sensor* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* @wf_smu_all_sensors_ok, align 4
  br label %64

64:                                               ; preds = %5, %63, %60, %57, %54
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @wf_get_sensor(%struct.wf_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
