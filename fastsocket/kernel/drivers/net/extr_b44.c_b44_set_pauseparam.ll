; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.b44 = type { i32, i32 }

@B44_FLAG_PAUSE_AUTO = common dso_local global i32 0, align 4
@B44_FLAG_RX_PAUSE = common dso_local global i32 0, align 4
@B44_FLAG_TX_PAUSE = common dso_local global i32 0, align 4
@B44_FULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @b44_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.b44* @netdev_priv(%struct.net_device* %6)
  store %struct.b44* %7, %struct.b44** %5, align 8
  %8 = load %struct.b44*, %struct.b44** %5, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @B44_FLAG_PAUSE_AUTO, align 4
  %17 = load %struct.b44*, %struct.b44** %5, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @B44_FLAG_PAUSE_AUTO, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.b44*, %struct.b44** %5, align 8
  %25 = getelementptr inbounds %struct.b44, %struct.b44* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @B44_FLAG_RX_PAUSE, align 4
  %35 = load %struct.b44*, %struct.b44** %5, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @B44_FLAG_RX_PAUSE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.b44*, %struct.b44** %5, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @B44_FLAG_TX_PAUSE, align 4
  %53 = load %struct.b44*, %struct.b44** %5, align 8
  %54 = getelementptr inbounds %struct.b44, %struct.b44* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* @B44_FLAG_TX_PAUSE, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.b44*, %struct.b44** %5, align 8
  %61 = getelementptr inbounds %struct.b44, %struct.b44* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.b44*, %struct.b44** %5, align 8
  %66 = getelementptr inbounds %struct.b44, %struct.b44* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @B44_FLAG_PAUSE_AUTO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.b44*, %struct.b44** %5, align 8
  %73 = call i32 @b44_halt(%struct.b44* %72)
  %74 = load %struct.b44*, %struct.b44** %5, align 8
  %75 = call i32 @b44_init_rings(%struct.b44* %74)
  %76 = load %struct.b44*, %struct.b44** %5, align 8
  %77 = load i32, i32* @B44_FULL_RESET, align 4
  %78 = call i32 @b44_init_hw(%struct.b44* %76, i32 %77)
  br label %85

79:                                               ; preds = %64
  %80 = load %struct.b44*, %struct.b44** %5, align 8
  %81 = load %struct.b44*, %struct.b44** %5, align 8
  %82 = getelementptr inbounds %struct.b44, %struct.b44* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__b44_set_flow_ctrl(%struct.b44* %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.b44*, %struct.b44** %5, align 8
  %87 = getelementptr inbounds %struct.b44, %struct.b44* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load %struct.b44*, %struct.b44** %5, align 8
  %90 = call i32 @b44_enable_ints(%struct.b44* %89)
  ret i32 0
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @b44_init_rings(%struct.b44*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @__b44_set_flow_ctrl(%struct.b44*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @b44_enable_ints(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
