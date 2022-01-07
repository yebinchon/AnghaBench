; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mii_bus = type { i64 }

@MDIOBUS_RELEASED = common dso_local global i64 0, align 8
@MDIOBUS_ALLOCATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @mdiobus_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdiobus_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mii_bus*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.mii_bus* @to_mii_bus(%struct.device* %4)
  store %struct.mii_bus* %5, %struct.mii_bus** %3, align 8
  %6 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %7 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MDIOBUS_RELEASED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MDIOBUS_ALLOCATED, align 8
  %16 = icmp ne i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ false, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %22 = call i32 @kfree(%struct.mii_bus* %21)
  ret void
}

declare dso_local %struct.mii_bus* @to_mii_bus(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
