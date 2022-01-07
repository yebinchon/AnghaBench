; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88x201x.c_led_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88x201x.c_led_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_CTRL2 = common dso_local global i32 0, align 4
@LINK_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @led_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_link(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.cphy*, %struct.cphy** %3, align 8
  %7 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %8 = load i32, i32* @MDIO_CTRL2, align 4
  %9 = call i32 @cphy_mdio_read(%struct.cphy* %6, i32 %7, i32 %8, i32* %5)
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cphy*, %struct.cphy** %3, align 8
  %17 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %18 = load i32, i32* @MDIO_CTRL2, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cphy_mdio_write(%struct.cphy* %16, i32 %17, i32 %18, i32 %19)
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, -2
  store i32 %23, i32* %5, align 4
  %24 = load %struct.cphy*, %struct.cphy** %3, align 8
  %25 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %26 = load i32, i32* @MDIO_CTRL2, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cphy_mdio_write(%struct.cphy* %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %13
  ret i32 0
}

declare dso_local i32 @cphy_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @cphy_mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
