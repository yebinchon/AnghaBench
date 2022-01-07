; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv643xx_eth_private = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv643xx_eth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.mv643xx_eth_private* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.mv643xx_eth_private* %5, %struct.mv643xx_eth_private** %3, align 8
  %6 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %7 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @unregister_netdev(i32 %8)
  %10 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %11 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %16 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @phy_detach(i32* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = call i32 (...) @flush_scheduled_work()
  %21 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %22 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @free_netdev(i32 %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %25, i32* null)
  ret i32 0
}

declare dso_local %struct.mv643xx_eth_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @phy_detach(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
