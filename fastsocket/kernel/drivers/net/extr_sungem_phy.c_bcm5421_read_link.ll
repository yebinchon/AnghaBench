; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5421_read_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5421_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32 }

@MII_NCONFIG = common dso_local global i32 0, align 4
@BCM5421_MODE_MASK = common dso_local global i32 0, align 4
@BCM54XX_COPPER = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5421_read_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5421_read_link(%struct.mii_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  %6 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %7 = load i32, i32* @MII_NCONFIG, align 4
  %8 = call i32 @phy_write(%struct.mii_phy* %6, i32 %7, i32 4096)
  %9 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %10 = load i32, i32* @MII_NCONFIG, align 4
  %11 = call i32 @phy_read(%struct.mii_phy* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BCM5421_MODE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 5
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BCM54XX_COPPER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %21 = call i32 @bcm54xx_read_link(%struct.mii_phy* %20)
  store i32 %21, i32* %2, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load i32, i32* @SPEED_1000, align 4
  %24 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %25 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %27 = load i32, i32* @MII_NCONFIG, align 4
  %28 = call i32 @phy_write(%struct.mii_phy* %26, i32 %27, i32 8192)
  %29 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %30 = load i32, i32* @MII_NCONFIG, align 4
  %31 = call i32 @phy_read(%struct.mii_phy* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 128
  %34 = ashr i32 %33, 7
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load i32, i32* @DUPLEX_HALF, align 4
  %38 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %39 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %48

42:                                               ; preds = %22
  %43 = load i32, i32* @DUPLEX_FULL, align 4
  %44 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %45 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %36
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @bcm54xx_read_link(%struct.mii_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
