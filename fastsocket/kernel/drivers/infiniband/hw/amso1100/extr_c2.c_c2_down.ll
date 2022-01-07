; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c2_port = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.c2_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.c2_dev = type { i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"%s: disabling interface\0A\00", align 1
@C2_IDIS = common dso_local global i64 0, align 8
@C2_NIMR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @c2_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.c2_port*, align 8
  %4 = alloca %struct.c2_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.c2_port* @netdev_priv(%struct.net_device* %5)
  store %struct.c2_port* %6, %struct.c2_port** %3, align 8
  %7 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %8 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %7, i32 0, i32 5
  %9 = load %struct.c2_dev*, %struct.c2_dev** %8, align 8
  store %struct.c2_dev* %9, %struct.c2_dev** %4, align 8
  %10 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %11 = call i64 @netif_msg_ifdown(%struct.c2_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @c2_tx_interrupt(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @netif_stop_queue(%struct.net_device* %21)
  %23 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %24 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @C2_IDIS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 1, i64 %27)
  %29 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %30 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @C2_NIMR0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %36 = call i32 @c2_reset(%struct.c2_port* %35)
  %37 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %38 = call i32 @c2_tx_clean(%struct.c2_port* %37)
  %39 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %40 = call i32 @c2_rx_clean(%struct.c2_port* %39)
  %41 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %42 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %47 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  %51 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %52 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %55 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %58 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.c2_port*, %struct.c2_port** %3, align 8
  %61 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pci_free_consistent(i32 %53, i32 %56, i32 %59, i32 %62)
  ret i32 0
}

declare dso_local %struct.c2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_ifdown(%struct.c2_port*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @c2_tx_interrupt(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @c2_reset(%struct.c2_port*) #1

declare dso_local i32 @c2_tx_clean(%struct.c2_port*) #1

declare dso_local i32 @c2_rx_clean(%struct.c2_port*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
