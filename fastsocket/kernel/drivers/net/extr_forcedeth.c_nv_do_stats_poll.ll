; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_do_stats_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_do_stats_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@STATS_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nv_do_stats_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_do_stats_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fe_priv*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.net_device*
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @nv_get_hw_stats(%struct.net_device* %9)
  %11 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %12 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %17 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %16, i32 0, i32 0
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @STATS_INTERVAL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @round_jiffies(i64 %20)
  %22 = call i32 @mod_timer(i32* %17, i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nv_get_hw_stats(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
