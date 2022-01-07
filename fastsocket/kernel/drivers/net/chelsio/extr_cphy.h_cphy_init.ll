; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cphy.h_cphy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cphy.h_cphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { %struct.TYPE_2__, %struct.cphy_ops*, %struct.adapter* }
%struct.TYPE_2__ = type { i32, %struct.net_device*, i32, i32, i32, i32 }
%struct.adapter = type { i32 }
%struct.net_device = type { i32 }
%struct.cphy_ops = type { i32 }
%struct.mdio_ops = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cphy*, %struct.net_device*, i32, %struct.cphy_ops*, %struct.mdio_ops*)* @cphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cphy_init(%struct.cphy* %0, %struct.net_device* %1, i32 %2, %struct.cphy_ops* %3, %struct.mdio_ops* %4) #0 {
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cphy_ops*, align 8
  %10 = alloca %struct.mdio_ops*, align 8
  %11 = alloca %struct.adapter*, align 8
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cphy_ops* %3, %struct.cphy_ops** %9, align 8
  store %struct.mdio_ops* %4, %struct.mdio_ops** %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.adapter* %13, %struct.adapter** %11, align 8
  %14 = load %struct.adapter*, %struct.adapter** %11, align 8
  %15 = load %struct.cphy*, %struct.cphy** %6, align 8
  %16 = getelementptr inbounds %struct.cphy, %struct.cphy* %15, i32 0, i32 2
  store %struct.adapter* %14, %struct.adapter** %16, align 8
  %17 = load %struct.cphy_ops*, %struct.cphy_ops** %9, align 8
  %18 = load %struct.cphy*, %struct.cphy** %6, align 8
  %19 = getelementptr inbounds %struct.cphy, %struct.cphy* %18, i32 0, i32 1
  store %struct.cphy_ops* %17, %struct.cphy_ops** %19, align 8
  %20 = load %struct.mdio_ops*, %struct.mdio_ops** %10, align 8
  %21 = icmp ne %struct.mdio_ops* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.cphy*, %struct.cphy** %6, align 8
  %25 = getelementptr inbounds %struct.cphy, %struct.cphy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.cphy_ops*, %struct.cphy_ops** %9, align 8
  %28 = getelementptr inbounds %struct.cphy_ops, %struct.cphy_ops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cphy*, %struct.cphy** %6, align 8
  %31 = getelementptr inbounds %struct.cphy, %struct.cphy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load %struct.mdio_ops*, %struct.mdio_ops** %10, align 8
  %34 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cphy*, %struct.cphy** %6, align 8
  %37 = getelementptr inbounds %struct.cphy, %struct.cphy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 8
  %39 = load %struct.mdio_ops*, %struct.mdio_ops** %10, align 8
  %40 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cphy*, %struct.cphy** %6, align 8
  %43 = getelementptr inbounds %struct.cphy, %struct.cphy* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mdio_ops*, %struct.mdio_ops** %10, align 8
  %46 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cphy*, %struct.cphy** %6, align 8
  %49 = getelementptr inbounds %struct.cphy, %struct.cphy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  br label %51

51:                                               ; preds = %22, %5
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = load %struct.cphy*, %struct.cphy** %6, align 8
  %54 = getelementptr inbounds %struct.cphy, %struct.cphy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store %struct.net_device* %52, %struct.net_device** %55, align 8
  ret void
}

declare dso_local %struct.adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
