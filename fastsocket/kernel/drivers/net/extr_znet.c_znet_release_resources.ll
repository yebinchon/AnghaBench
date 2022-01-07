; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_znet.c_znet_release_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_znet.c_znet_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.znet_private = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @znet_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @znet_release_resources(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.znet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.znet_private* @netdev_priv(%struct.net_device* %4)
  store %struct.znet_private* %5, %struct.znet_private** %3, align 8
  %6 = load %struct.znet_private*, %struct.znet_private** %3, align 8
  %7 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.znet_private*, %struct.znet_private** %3, align 8
  %10 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @release_region(i32 %8, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.znet_private*, %struct.znet_private** %3, align 8
  %17 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @release_region(i32 %15, i32 %18)
  %20 = load %struct.znet_private*, %struct.znet_private** %3, align 8
  %21 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @free_dma(i32 %22)
  %24 = load %struct.znet_private*, %struct.znet_private** %3, align 8
  %25 = getelementptr inbounds %struct.znet_private, %struct.znet_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @free_dma(i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.net_device* %31)
  ret void
}

declare dso_local %struct.znet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
