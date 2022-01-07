; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_mdio.c_temac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_mdio.c_temac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.temac_local* }
%struct.temac_local = type { i32, i32 }

@XTE_LSW0_OFFSET = common dso_local global i32 0, align 4
@XTE_MIIMAI_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"temac_mdio_read(phy_id=%i, reg=%x) == %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @temac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.temac_local*, align 8
  %8 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %10 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %9, i32 0, i32 0
  %11 = load %struct.temac_local*, %struct.temac_local** %10, align 8
  store %struct.temac_local* %11, %struct.temac_local** %7, align 8
  %12 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %13 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %16 = load i32, i32* @XTE_LSW0_OFFSET, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 5
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @temac_iow(%struct.temac_local* %15, i32 %16, i32 %20)
  %22 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %23 = load i32, i32* @XTE_MIIMAI_OFFSET, align 4
  %24 = call i32 @temac_indirect_in32(%struct.temac_local* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %26 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %29 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temac_iow(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @temac_indirect_in32(%struct.temac_local*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
