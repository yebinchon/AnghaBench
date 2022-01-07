; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_get_phy_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_get_phy_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32)* }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_phy_id(%struct.mii_bus* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %10 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %9, i32 0, i32 0
  %11 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %10, align 8
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MII_PHYSID1, align 4
  %15 = call i32 %11(%struct.mii_bus* %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 65535
  %24 = shl i32 %23, 16
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 0
  %28 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %27, align 8
  %29 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MII_PHYSID2, align 4
  %32 = call i32 %28(%struct.mii_bus* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %21
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 65535
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %35, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
