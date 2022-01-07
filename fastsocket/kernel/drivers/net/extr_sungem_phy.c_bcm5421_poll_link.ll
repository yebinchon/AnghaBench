; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5421_poll_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5421_poll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_NCONFIG = common dso_local global i32 0, align 4
@BCM5421_MODE_MASK = common dso_local global i32 0, align 4
@BCM54XX_COPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5421_poll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5421_poll_link(%struct.mii_phy* %0) #0 {
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
  %21 = call i32 @genmii_poll_link(%struct.mii_phy* %20)
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %24 = load i32, i32* @MII_NCONFIG, align 4
  %25 = call i32 @phy_write(%struct.mii_phy* %23, i32 %24, i32 8192)
  %26 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %27 = load i32, i32* @MII_NCONFIG, align 4
  %28 = call i32 @phy_read(%struct.mii_phy* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %34

33:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @genmii_poll_link(%struct.mii_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
