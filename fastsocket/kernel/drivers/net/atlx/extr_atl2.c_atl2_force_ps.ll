; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_force_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_force_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32 }

@MII_DBG_ADDR = common dso_local global i32 0, align 4
@MII_DBG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_hw*)* @atl2_force_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_force_ps(%struct.atl2_hw* %0) #0 {
  %2 = alloca %struct.atl2_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %2, align 8
  %4 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %5 = load i32, i32* @MII_DBG_ADDR, align 4
  %6 = call i32 @atl2_write_phy_reg(%struct.atl2_hw* %4, i32 %5, i32 0)
  %7 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %8 = load i32, i32* @MII_DBG_DATA, align 4
  %9 = call i32 @atl2_read_phy_reg(%struct.atl2_hw* %7, i32 %8, i32* %3)
  %10 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %11 = load i32, i32* @MII_DBG_DATA, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, 4096
  %14 = call i32 @atl2_write_phy_reg(%struct.atl2_hw* %10, i32 %11, i32 %13)
  %15 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %16 = load i32, i32* @MII_DBG_ADDR, align 4
  %17 = call i32 @atl2_write_phy_reg(%struct.atl2_hw* %15, i32 %16, i32 2)
  %18 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %19 = load i32, i32* @MII_DBG_DATA, align 4
  %20 = call i32 @atl2_write_phy_reg(%struct.atl2_hw* %18, i32 %19, i32 12288)
  %21 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %22 = load i32, i32* @MII_DBG_ADDR, align 4
  %23 = call i32 @atl2_write_phy_reg(%struct.atl2_hw* %21, i32 %22, i32 3)
  %24 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %25 = load i32, i32* @MII_DBG_DATA, align 4
  %26 = call i32 @atl2_write_phy_reg(%struct.atl2_hw* %24, i32 %25, i32 0)
  ret void
}

declare dso_local i32 @atl2_write_phy_reg(%struct.atl2_hw*, i32, i32) #1

declare dso_local i32 @atl2_read_phy_reg(%struct.atl2_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
