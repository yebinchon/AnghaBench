; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_mii_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@MDIO_WAIT_FOR_USER_ACCESS = common dso_local global i32 0, align 4
@MDIO_USERACCESS_GO = common dso_local global i32 0, align 4
@MDIO_USERACCESS_READ = common dso_local global i32 0, align 4
@MDIO_USERACCESS_REGADR = common dso_local global i32 0, align 4
@MDIO_USERACCESS_PHYADR = common dso_local global i32 0, align 4
@MDIO_USERACCESS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @emac_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_mii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @MDIO_WAIT_FOR_USER_ACCESS, align 4
  %10 = load i32, i32* @MDIO_USERACCESS_GO, align 4
  %11 = load i32, i32* @MDIO_USERACCESS_READ, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 21
  %15 = load i32, i32* @MDIO_USERACCESS_REGADR, align 4
  %16 = and i32 %14, %15
  %17 = or i32 %12, %16
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* @MDIO_USERACCESS_PHYADR, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %17, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MDIO_USERACCESS_DATA, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = call i32 @MDIO_USERACCESS(i32 0)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @emac_mdio_write(i32 %27, i32 %28)
  %30 = load i32, i32* @MDIO_WAIT_FOR_USER_ACCESS, align 4
  %31 = call i32 @MDIO_USERACCESS(i32 0)
  %32 = call i32 @emac_mdio_read(i32 %31)
  %33 = load i32, i32* @MDIO_USERACCESS_DATA, align 4
  %34 = and i32 %32, %33
  ret i32 %34
}

declare dso_local i32 @emac_mdio_write(i32, i32) #1

declare dso_local i32 @MDIO_USERACCESS(i32) #1

declare dso_local i32 @emac_mdio_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
