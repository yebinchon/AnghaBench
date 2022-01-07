; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_conservative.c_dbs_timer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_conservative.c_dbs_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_dbs_info_s = type { i32, i32, i32 }

@dbs_tuners_ins = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@jiffies = common dso_local global i32 0, align 4
@do_dbs_timer = common dso_local global i32 0, align 4
@kconservative_wq = common dso_local global i32 0, align 4
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
  %11 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %12 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %14 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %13, i32 0, i32 1
  %15 = load i32, i32* @do_dbs_timer, align 4
  %16 = call i32 @INIT_DELAYED_WORK_DEFERRABLE(i32* %14, i32 %15)
  %17 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %18 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @kconservative_wq, align 4
  %21 = load %struct.cpu_dbs_info_s*, %struct.cpu_dbs_info_s** %2, align 8
  %22 = getelementptr inbounds %struct.cpu_dbs_info_s, %struct.cpu_dbs_info_s* %21, i32 0, i32 1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @queue_delayed_work_on(i32 %19, i32 %20, i32* %22, i32 %23)
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
