; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.cp_private = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s: disabling interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.cp_private* @netdev_priv(%struct.net_device* %5)
  store %struct.cp_private* %6, %struct.cp_private** %3, align 8
  %7 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %8 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %7, i32 0, i32 1
  %9 = call i32 @napi_disable(i32* %8)
  %10 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %11 = call i64 @netif_msg_ifdown(%struct.cp_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %20 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @netif_stop_queue(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @netif_carrier_off(%struct.net_device* %25)
  %27 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %28 = call i32 @cp_stop_hw(%struct.cp_private* %27)
  %29 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %30 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %29, i32 0, i32 0
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @free_irq(i32 %35, %struct.net_device* %36)
  %38 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %39 = call i32 @cp_free_rings(%struct.cp_private* %38)
  ret i32 0
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i64 @netif_msg_ifdown(%struct.cp_private*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @cp_stop_hw(%struct.cp_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @cp_free_rings(%struct.cp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
