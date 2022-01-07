; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2 = type { i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@BNX2_MISC_CFG = common dso_local global i32 0, align 4
@BNX2_MISC_CFG_LEDMODE_MAC = common dso_local global i32 0, align 4
@BNX2_EMAC_LED = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_1000MB_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_100MB_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_10MB_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_TRAFFIC_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_TRAFFIC = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnx2_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnx2* @netdev_priv(%struct.net_device* %8)
  store %struct.bnx2* %9, %struct.bnx2** %5, align 8
  %10 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %11 = load i32, i32* @PCI_D0, align 4
  %12 = call i32 @bnx2_set_power_state(%struct.bnx2* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 2, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %18 = load i32, i32* @BNX2_MISC_CFG, align 4
  %19 = call i32 @BNX2_RD(%struct.bnx2* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %21 = load i32, i32* @BNX2_MISC_CFG, align 4
  %22 = load i32, i32* @BNX2_MISC_CFG_LEDMODE_MAC, align 4
  %23 = call i32 @BNX2_WR(%struct.bnx2* %20, i32 %21, i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %60, %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 2
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %35 = load i32, i32* @BNX2_EMAC_LED, align 4
  %36 = load i32, i32* @BNX2_EMAC_LED_OVERRIDE, align 4
  %37 = call i32 @BNX2_WR(%struct.bnx2* %34, i32 %35, i32 %36)
  br label %53

38:                                               ; preds = %29
  %39 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %40 = load i32, i32* @BNX2_EMAC_LED, align 4
  %41 = load i32, i32* @BNX2_EMAC_LED_OVERRIDE, align 4
  %42 = load i32, i32* @BNX2_EMAC_LED_1000MB_OVERRIDE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BNX2_EMAC_LED_100MB_OVERRIDE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BNX2_EMAC_LED_10MB_OVERRIDE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BNX2_EMAC_LED_TRAFFIC_OVERRIDE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BNX2_EMAC_LED_TRAFFIC, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @BNX2_WR(%struct.bnx2* %39, i32 %40, i32 %51)
  br label %53

53:                                               ; preds = %38, %33
  %54 = call i32 @msleep_interruptible(i32 500)
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @signal_pending(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %63

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %24

63:                                               ; preds = %58, %24
  %64 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %65 = load i32, i32* @BNX2_EMAC_LED, align 4
  %66 = call i32 @BNX2_WR(%struct.bnx2* %64, i32 %65, i32 0)
  %67 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %68 = load i32, i32* @BNX2_MISC_CFG, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @BNX2_WR(%struct.bnx2* %67, i32 %68, i32 %69)
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @netif_running(%struct.net_device* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %63
  %75 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %76 = load i32, i32* @PCI_D3hot, align 4
  %77 = call i32 @bnx2_set_power_state(%struct.bnx2* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %63
  ret i32 0
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2_set_power_state(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
