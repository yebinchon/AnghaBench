; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@MDIOBUS_REGISTERED = common dso_local global i64 0, align 8
@MDIOBUS_UNREGISTERED = common dso_local global i64 0, align 8
@PHY_MAX_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdiobus_unregister(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  %4 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %5 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MDIOBUS_REGISTERED, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i64, i64* @MDIOBUS_UNREGISTERED, align 8
  %12 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 2
  %16 = call i32 @device_del(i32* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PHY_MAX_ADDR, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %23 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %32 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @device_unregister(i32* %38)
  br label %40

40:                                               ; preds = %30, %21
  %41 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %46, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %17

50:                                               ; preds = %17
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
