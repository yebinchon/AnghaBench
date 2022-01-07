; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_debugfs.c_wl1251_debugfs_update_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_debugfs.c_wl1251_debugfs_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@WL1251_STATE_ON = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@WL1251_DEBUGFS_STATS_LIFETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*)* @wl1251_debugfs_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_debugfs_update_stats(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %5 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %8 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %14 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WL1251_STATE_ON, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %21 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @WL1251_DEBUGFS_STATS_LIFETIME, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i64 @time_after(i64 %19, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %31 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %32 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wl1251_acx_statistics(%struct.wl1251* %30, i32 %34)
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %38 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %18, %12
  %41 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %42 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %41)
  br label %43

43:                                               ; preds = %40, %11
  %44 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %45 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wl1251_acx_statistics(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
