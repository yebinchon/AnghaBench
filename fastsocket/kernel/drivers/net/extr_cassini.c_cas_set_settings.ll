; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64 }
%struct.cas = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @cas_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.cas*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.cas* @netdev_priv(%struct.net_device* %8)
  store %struct.cas* %9, %struct.cas** %6, align 8
  %10 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AUTONEG_ENABLE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AUTONEG_DISABLE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %15, %2
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AUTONEG_DISABLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPEED_1000, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPEED_100, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SPEED_10, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %42, %36, %30
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DUPLEX_HALF, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DUPLEX_FULL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %42
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %54, %48, %24
  %64 = load %struct.cas*, %struct.cas** %6, align 8
  %65 = getelementptr inbounds %struct.cas, %struct.cas* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.cas*, %struct.cas** %6, align 8
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %70 = call i32 @cas_begin_auto_negotiation(%struct.cas* %68, %struct.ethtool_cmd* %69)
  %71 = load %struct.cas*, %struct.cas** %6, align 8
  %72 = getelementptr inbounds %struct.cas, %struct.cas* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %63, %60, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cas_begin_auto_negotiation(%struct.cas*, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
