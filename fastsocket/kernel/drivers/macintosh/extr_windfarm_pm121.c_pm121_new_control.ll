; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm121.c_pm121_new_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pm121.c_pm121_new_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { i32 }

@pm121_all_controls_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"optical-drive-fan\00", align 1
@FAN_OD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"hard-drive-fan\00", align 1
@FAN_HD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cpu-fan\00", align 1
@FAN_CPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"cpufreq-clamp\00", align 1
@CPUFREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_control*)* @pm121_new_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm121_new_control(%struct.wf_control* %0) #0 {
  %2 = alloca %struct.wf_control*, align 8
  %3 = alloca i32, align 4
  store %struct.wf_control* %0, %struct.wf_control** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* @pm121_all_controls_ok, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %51

7:                                                ; preds = %1
  %8 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %9 = load i32, i32* @FAN_OD, align 4
  %10 = call i64 @pm121_register_control(%struct.wf_control* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i1 [ false, %7 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %19 = load i32, i32* @FAN_HD, align 4
  %20 = call i64 @pm121_register_control(%struct.wf_control* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i1 [ false, %15 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %29 = load i32, i32* @FAN_CPU, align 4
  %30 = call i64 @pm121_register_control(%struct.wf_control* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i1 [ false, %25 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  %38 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %39 = load i32, i32* @CPUFREQ, align 4
  %40 = call i64 @pm121_register_control(%struct.wf_control* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i1 [ false, %35 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* @pm121_all_controls_ok, align 4
  br label %51

51:                                               ; preds = %6, %50, %45
  ret void
}

declare dso_local i64 @pm121_register_control(%struct.wf_control*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
