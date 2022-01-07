; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_ondemand.c_dbs_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_ondemand.c_dbs_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_dbs_info_s = type { i32, i32, i32 }

@dbs_tuners_ins = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@jiffies = common dso_local global i32 0, align 4
@DBS_NORMAL_SAMPLE = common dso_local global i32 0, align 4
@do_dbs_timer = common dso_local global i32 0, align 4
@kondemand_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_dbs_info_s*)* @dbs_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbs_timer_init(%struct.cpu_dbs_info_s* %0) #0 {
  %2 = alloca %struct.cpu_dbs_info_s*, align 8
  %3 = alloca i32, align 4
  store %struct.cpu_dbs_info_s* %0, %struct.cpu_dbs_info_s** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dbs_tuners_ins, i32 0, i32 0), align 4
  %5 = call i32 @usecs_to_jiffies(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i32, i32* %3, align 4
  %8 = srem i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @DBS_NORMAL_SAMPLE, align 4
  %12 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %13 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %15 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %14, i32 0, i32 0
  %16 = load i32, i32* @do_dbs_timer, align 4
  %17 = call i32 @INIT_DELAYED_WORK_DEFERRABLE(i32* %15, i32 %16)
  %18 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %19 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @kondemand_wq, align 4
  %22 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %23 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %22, i32 0, i32 0
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @queue_delayed_work_on(i32 %20, i32 %21, i32* %23, i32 %24)
  ret void
}

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK_DEFERRABLE(i32*, i32) #1

declare dso_local i32 @queue_delayed_work_on(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
