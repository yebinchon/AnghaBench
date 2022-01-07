; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_mdio.c_stmmac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_mdio.c_stmmac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.stmmac_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MII_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @stmmac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.stmmac_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.stmmac_priv* %18, %struct.stmmac_priv** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 11
  %38 = and i32 %37, 63488
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 6
  %41 = and i32 %40, 1984
  %42 = or i32 %38, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @MII_BUSY, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %47, %3
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = call i32 @readl(i64 %51)
  %53 = load i32, i32* @MII_BUSY, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %46, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = call i32 @writel(i32 %57, i64 %61)
  br label %63

63:                                               ; preds = %64, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = call i32 @readl(i64 %68)
  %70 = load i32, i32* @MII_BUSY, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %63, label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = add i64 %74, %76
  %78 = call i32 @readl(i64 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  ret i32 %79
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
