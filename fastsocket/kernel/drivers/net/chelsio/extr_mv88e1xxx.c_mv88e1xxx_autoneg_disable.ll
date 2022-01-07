; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_autoneg_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_mv88e1xxx.c_mv88e1xxx_autoneg_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@CROSSOVER_MDI = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @mv88e1xxx_autoneg_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e1xxx_autoneg_disable(%struct.cphy* %0) #0 {
  %2 = alloca %struct.cphy*, align 8
  %3 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %2, align 8
  %4 = load %struct.cphy*, %struct.cphy** %2, align 8
  %5 = load i32, i32* @CROSSOVER_MDI, align 4
  %6 = call i32 @mv88e1xxx_crossover_set(%struct.cphy* %4, i32 %5)
  %7 = load %struct.cphy*, %struct.cphy** %2, align 8
  %8 = load i32, i32* @MII_BMCR, align 4
  %9 = call i32 @simple_mdio_read(%struct.cphy* %7, i32 %8, i32* %3)
  %10 = load i32, i32* @BMCR_ANENABLE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.cphy*, %struct.cphy** %2, align 8
  %15 = load i32, i32* @MII_BMCR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @BMCR_ANRESTART, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @simple_mdio_write(%struct.cphy* %14, i32 %15, i32 %18)
  ret i32 0
}

declare dso_local i32 @mv88e1xxx_crossover_set(%struct.cphy*, i32) #1

declare dso_local i32 @simple_mdio_read(%struct.cphy*, i32, i32*) #1

declare dso_local i32 @simple_mdio_write(%struct.cphy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
