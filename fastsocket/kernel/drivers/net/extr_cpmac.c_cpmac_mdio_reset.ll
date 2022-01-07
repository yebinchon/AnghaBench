; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@AR7_RESET_BIT_MDIO = common dso_local global i32 0, align 4
@CPMAC_MDIO_CONTROL = common dso_local global i32 0, align 4
@MDIOC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @cpmac_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_mdio_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  %3 = load i32, i32* @AR7_RESET_BIT_MDIO, align 4
  %4 = call i32 @ar7_device_reset(i32 %3)
  %5 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %6 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CPMAC_MDIO_CONTROL, align 4
  %9 = load i32, i32* @MDIOC_ENABLE, align 4
  %10 = call i32 (...) @ar7_cpmac_freq()
  %11 = sdiv i32 %10, 2200000
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @MDIOC_CLKDIV(i32 %12)
  %14 = or i32 %9, %13
  %15 = call i32 @cpmac_write(i32 %7, i32 %8, i32 %14)
  ret i32 0
}

declare dso_local i32 @ar7_device_reset(i32) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @MDIOC_CLKDIV(i32) #1

declare dso_local i32 @ar7_cpmac_freq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
