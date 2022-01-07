; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.au1000_private = type { i32, i64 }

@au1000_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: close: dev=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1000_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.au1000_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %5)
  store %struct.au1000_private* %6, %struct.au1000_private** %4, align 8
  %7 = load i32, i32* @au1000_debug, align 4
  %8 = icmp sgt i32 %7, 4
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.net_device* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %17 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %22 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @phy_stop(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %27 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @reset_mac_unlocked(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @netif_stop_queue(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.net_device* %37)
  %39 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %40 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %39, i32 0, i32 0
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret i32 0
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, %struct.net_device*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reset_mac_unlocked(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
