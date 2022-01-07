; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_readphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_readphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32 }

@B44_EMAC_ISTAT = common dso_local global i32 0, align 4
@EMAC_INT_MII = common dso_local global i32 0, align 4
@B44_MDIO_DATA = common dso_local global i32 0, align 4
@MDIO_DATA_SB_START = common dso_local global i32 0, align 4
@MDIO_OP_READ = common dso_local global i32 0, align 4
@MDIO_DATA_OP_SHIFT = common dso_local global i32 0, align 4
@MDIO_DATA_PMD_SHIFT = common dso_local global i32 0, align 4
@MDIO_DATA_RA_SHIFT = common dso_local global i32 0, align 4
@MDIO_TA_VALID = common dso_local global i32 0, align 4
@MDIO_DATA_TA_SHIFT = common dso_local global i32 0, align 4
@MDIO_DATA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*, i32, i32, i32*)* @__b44_readphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__b44_readphy(%struct.b44* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.b44*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.b44*, %struct.b44** %5, align 8
  %11 = load i32, i32* @B44_EMAC_ISTAT, align 4
  %12 = load i32, i32* @EMAC_INT_MII, align 4
  %13 = call i32 @bw32(%struct.b44* %10, i32 %11, i32 %12)
  %14 = load %struct.b44*, %struct.b44** %5, align 8
  %15 = load i32, i32* @B44_MDIO_DATA, align 4
  %16 = load i32, i32* @MDIO_DATA_SB_START, align 4
  %17 = load i32, i32* @MDIO_OP_READ, align 4
  %18 = load i32, i32* @MDIO_DATA_OP_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MDIO_DATA_PMD_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MDIO_DATA_RA_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* @MDIO_TA_VALID, align 4
  %30 = load i32, i32* @MDIO_DATA_TA_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = call i32 @bw32(%struct.b44* %14, i32 %15, i32 %32)
  %34 = load %struct.b44*, %struct.b44** %5, align 8
  %35 = load i32, i32* @B44_EMAC_ISTAT, align 4
  %36 = load i32, i32* @EMAC_INT_MII, align 4
  %37 = call i32 @b44_wait_bit(%struct.b44* %34, i32 %35, i32 %36, i32 100, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.b44*, %struct.b44** %5, align 8
  %39 = load i32, i32* @B44_MDIO_DATA, align 4
  %40 = call i32 @br32(%struct.b44* %38, i32 %39)
  %41 = load i32, i32* @MDIO_DATA_DATA, align 4
  %42 = and i32 %40, %41
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_wait_bit(%struct.b44*, i32, i32, i32, i32) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
