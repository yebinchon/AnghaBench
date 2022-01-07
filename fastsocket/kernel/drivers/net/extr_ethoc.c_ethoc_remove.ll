; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ethoc = type { i32, i64, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ethoc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethoc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ethoc* @netdev_priv(%struct.net_device* %7)
  store %struct.ethoc* %8, %struct.ethoc** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call i32 @platform_set_drvdata(%struct.platform_device* %9, i32* null)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  %14 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %15 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @phy_disconnect(i32* %16)
  %18 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %19 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %21 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %26 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @mdiobus_unregister(%struct.TYPE_3__* %27)
  %29 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %30 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  %35 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %36 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @mdiobus_free(%struct.TYPE_3__* %37)
  br label %39

39:                                               ; preds = %24, %13
  %40 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %41 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %46 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ethoc*, %struct.ethoc** %4, align 8
  %49 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dma_free_coherent(i32* null, i64 %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %44, %39
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @unregister_netdev(%struct.net_device* %56)
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @free_netdev(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %55, %1
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
