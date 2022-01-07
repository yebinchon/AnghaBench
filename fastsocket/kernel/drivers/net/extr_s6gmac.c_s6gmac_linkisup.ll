; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_linkisup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_linkisup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { %struct.TYPE_2__, %struct.phy_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.phy_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @s6gmac_linkisup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_linkisup(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s6gmac*, align 8
  %6 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %7)
  store %struct.s6gmac* %8, %struct.s6gmac** %5, align 8
  %9 = load %struct.s6gmac*, %struct.s6gmac** %5, align 8
  %10 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %9, i32 0, i32 1
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %6, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.s6gmac*, %struct.s6gmac** %5, align 8
  %16 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1000
  %22 = zext i1 %21 to i32
  %23 = load %struct.s6gmac*, %struct.s6gmac** %5, align 8
  %24 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.s6gmac*, %struct.s6gmac** %5, align 8
  %27 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.s6gmac*, %struct.s6gmac** %5, align 8
  %39 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.s6gmac*, %struct.s6gmac** %5, align 8
  %42 = call i32 @s6gmac_set_rgmii_txclock(%struct.s6gmac* %41)
  br label %43

43:                                               ; preds = %34, %2
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.s6gmac*, %struct.s6gmac** %5, align 8
  %46 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @netif_carrier_on(%struct.net_device* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %55 = call i32 @phy_print_status(%struct.phy_device* %54)
  ret void
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @s6gmac_set_rgmii_txclock(%struct.s6gmac*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
