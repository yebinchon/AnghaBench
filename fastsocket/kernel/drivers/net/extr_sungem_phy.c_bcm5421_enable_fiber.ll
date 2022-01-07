; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5421_enable_fiber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem_phy.c_bcm5421_enable_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_NCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32)* @bcm5421_enable_fiber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5421_enable_fiber(%struct.mii_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %6 = load i32, i32* @MII_NCONFIG, align 4
  %7 = call i32 @phy_write(%struct.mii_phy* %5, i32 %6, i32 36896)
  %8 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %9 = load i32, i32* @MII_NCONFIG, align 4
  %10 = call i32 @phy_write(%struct.mii_phy* %8, i32 %9, i32 37983)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %15 = load i32, i32* @MII_NCONFIG, align 4
  %16 = call i32 @phy_write(%struct.mii_phy* %14, i32 %15, i32 64513)
  %17 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %18 = call i32 @phy_write(%struct.mii_phy* %17, i32 11, i32 4)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %22 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret i32 0
}

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
