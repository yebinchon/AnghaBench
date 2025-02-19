; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.korina_device = type { i32 }
%struct.korina_private = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @korina_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @korina_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.korina_device*, align 8
  %4 = alloca %struct.korina_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.korina_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.korina_device* %6, %struct.korina_device** %3, align 8
  %7 = load %struct.korina_device*, %struct.korina_device** %3, align 8
  %8 = getelementptr inbounds %struct.korina_device, %struct.korina_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.korina_private* @netdev_priv(i32 %9)
  store %struct.korina_private* %10, %struct.korina_private** %4, align 8
  %11 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %12 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iounmap(i32 %13)
  %15 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %16 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iounmap(i32 %17)
  %19 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %20 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iounmap(i32 %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %23, i32* null)
  %25 = load %struct.korina_device*, %struct.korina_device** %3, align 8
  %26 = getelementptr inbounds %struct.korina_device, %struct.korina_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @unregister_netdev(i32 %27)
  %29 = load %struct.korina_device*, %struct.korina_device** %3, align 8
  %30 = getelementptr inbounds %struct.korina_device, %struct.korina_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @free_netdev(i32 %31)
  ret i32 0
}

declare dso_local %struct.korina_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.korina_private* @netdev_priv(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
