; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_phy_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@MIIMU_SNRDY = common dso_local global i32 0, align 4
@MIIMU_PREAMBLE = common dso_local global i32 0, align 4
@MIIMU_PHY_NRES = common dso_local global i32 0, align 4
@NETX_MIIMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @netx_eth_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netx_eth_phy_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MIIMU_SNRDY, align 4
  %9 = load i32, i32* @MIIMU_PREAMBLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MIIMU_PHYADDR(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @MIIMU_REGADDR(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @MIIMU_PHY_NRES, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NETX_MIIMU, align 4
  %21 = call i32 @writel(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %28, %3
  %23 = load i32, i32* @NETX_MIIMU, align 4
  %24 = call i32 @readl(i32 %23)
  %25 = load i32, i32* @MIIMU_SNRDY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %22

29:                                               ; preds = %22
  %30 = load i32, i32* @NETX_MIIMU, align 4
  %31 = call i32 @readl(i32 %30)
  %32 = ashr i32 %31, 16
  ret i32 %32
}

declare dso_local i32 @MIIMU_PHYADDR(i32) #1

declare dso_local i32 @MIIMU_REGADDR(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
