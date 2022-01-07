; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_show_scaling_setspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_show_scaling_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [15 x i8] c"<unsupported>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i8*)* @show_scaling_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_scaling_setspeed(%struct.cpufreq_policy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i8*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %7 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.cpufreq_policy*, i8*)**
  %16 = load i32 (%struct.cpufreq_policy*, i8*)*, i32 (%struct.cpufreq_policy*, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.cpufreq_policy*, i8*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %10, %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %10
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %23 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.cpufreq_policy*, i8*)**
  %27 = load i32 (%struct.cpufreq_policy*, i8*)*, i32 (%struct.cpufreq_policy*, i8*)** %26, align 8
  %28 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 %27(%struct.cpufreq_policy* %28, i8* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
