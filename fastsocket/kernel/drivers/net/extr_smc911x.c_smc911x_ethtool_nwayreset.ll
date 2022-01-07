; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_nwayreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_nwayreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smc911x_local = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smc911x_ethtool_nwayreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc911x_ethtool_nwayreset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smc911x_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.smc911x_local* @netdev_priv(%struct.net_device* %6)
  store %struct.smc911x_local* %7, %struct.smc911x_local** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.smc911x_local*, %struct.smc911x_local** %3, align 8
  %11 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.smc911x_local*, %struct.smc911x_local** %3, align 8
  %16 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.smc911x_local*, %struct.smc911x_local** %3, align 8
  %20 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %19, i32 0, i32 2
  %21 = call i32 @mii_nway_restart(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.smc911x_local*, %struct.smc911x_local** %3, align 8
  %23 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.smc911x_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_nway_restart(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
