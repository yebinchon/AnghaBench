; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_shared_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_shared_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mv643xx_eth_shared_platform_data* }
%struct.mv643xx_eth_shared_platform_data = type { i32* }
%struct.mv643xx_eth_shared_private = type { i64, i32, i32 }

@NO_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv643xx_eth_shared_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_shared_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mv643xx_eth_shared_private*, align 8
  %4 = alloca %struct.mv643xx_eth_shared_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mv643xx_eth_shared_private* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mv643xx_eth_shared_private* %6, %struct.mv643xx_eth_shared_private** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mv643xx_eth_shared_platform_data*, %struct.mv643xx_eth_shared_platform_data** %9, align 8
  store %struct.mv643xx_eth_shared_platform_data* %10, %struct.mv643xx_eth_shared_platform_data** %4, align 8
  %11 = load %struct.mv643xx_eth_shared_platform_data*, %struct.mv643xx_eth_shared_platform_data** %4, align 8
  %12 = icmp eq %struct.mv643xx_eth_shared_platform_data* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.mv643xx_eth_shared_platform_data*, %struct.mv643xx_eth_shared_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.mv643xx_eth_shared_platform_data, %struct.mv643xx_eth_shared_platform_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13, %1
  %19 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %20 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mdiobus_unregister(i32 %21)
  %23 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %24 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mdiobus_free(i32 %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %29 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NO_IRQ, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %35 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %38 = call i32 @free_irq(i64 %36, %struct.mv643xx_eth_shared_private* %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %41 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @iounmap(i32 %42)
  %44 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %45 = call i32 @kfree(%struct.mv643xx_eth_shared_private* %44)
  ret i32 0
}

declare dso_local %struct.mv643xx_eth_shared_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @free_irq(i64, %struct.mv643xx_eth_shared_private*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.mv643xx_eth_shared_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
