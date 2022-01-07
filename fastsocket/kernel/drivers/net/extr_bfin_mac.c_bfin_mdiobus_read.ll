; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_bfin_mdiobus_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_bfin_mdiobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@STABUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @bfin_mdiobus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_mdiobus_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @bfin_mdio_poll()
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @SET_PHYAD(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @SET_REGAD(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @STABUSY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @bfin_write_EMAC_STAADD(i32 %14)
  %16 = call i32 (...) @bfin_mdio_poll()
  %17 = call i64 (...) @bfin_read_EMAC_STADAT()
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

declare dso_local i32 @bfin_mdio_poll(...) #1

declare dso_local i32 @bfin_write_EMAC_STAADD(i32) #1

declare dso_local i32 @SET_PHYAD(i32) #1

declare dso_local i32 @SET_REGAD(i32) #1

declare dso_local i64 @bfin_read_EMAC_STADAT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
