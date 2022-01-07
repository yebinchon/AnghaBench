; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio-bitbang.c_alloc_mdio_bitbang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio-bitbang.c_alloc_mdio_bitbang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mdiobb_ctrl*, i32, i32 }
%struct.mdiobb_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mdiobb_read = common dso_local global i32 0, align 4
@mdiobb_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mii_bus* @alloc_mdio_bitbang(%struct.mdiobb_ctrl* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca %struct.mdiobb_ctrl*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  store %struct.mdiobb_ctrl* %0, %struct.mdiobb_ctrl** %3, align 8
  %5 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %5, %struct.mii_bus** %4, align 8
  %6 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %7 = icmp ne %struct.mii_bus* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.mii_bus* null, %struct.mii_bus** %2, align 8
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.mdiobb_ctrl, %struct.mdiobb_ctrl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__module_get(i32 %14)
  %16 = load i32, i32* @mdiobb_read, align 4
  %17 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %18 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @mdiobb_write, align 4
  %20 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %3, align 8
  %23 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %24 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %23, i32 0, i32 0
  store %struct.mdiobb_ctrl* %22, %struct.mdiobb_ctrl** %24, align 8
  %25 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  store %struct.mii_bus* %25, %struct.mii_bus** %2, align 8
  br label %26

26:                                               ; preds = %9, %8
  %27 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  ret %struct.mii_bus* %27
}

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
