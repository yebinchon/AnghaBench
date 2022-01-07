; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_setsettings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_setsettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64 }
%struct.smc911x_local = type { i64, i32, i32, i32 }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i64 0, align 8
@PORT_AUI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @smc911x_ethtool_setsettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc911x_ethtool_setsettings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.smc911x_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.smc911x_local* @netdev_priv(%struct.net_device* %9)
  store %struct.smc911x_local* %10, %struct.smc911x_local** %6, align 8
  %11 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %12 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %17 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %16, i32 0, i32 2
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %21 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %20, i32 0, i32 3
  %22 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %23 = call i32 @mii_ethtool_sset(i32* %21, %struct.ethtool_cmd* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %25 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %24, i32 0, i32 2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %76

28:                                               ; preds = %2
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AUTONEG_DISABLE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %64, label %34

34:                                               ; preds = %28
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPEED_10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %64, label %40

40:                                               ; preds = %34
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DUPLEX_HALF, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DUPLEX_FULL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PORT_TP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PORT_AUI, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %46, %34, %28
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %58, %52
  %68 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DUPLEX_FULL, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load %struct.smc911x_local*, %struct.smc911x_local** %6, align 8
  %75 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %67, %15
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %64
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.smc911x_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_ethtool_sset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
