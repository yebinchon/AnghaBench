; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i32, i32, i32, i32 }
%struct.ethoc_bd = type { i32 }

@TX_BD_READY = common dso_local global i32 0, align 4
@INT_MASK_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ethoc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethoc_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ethoc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethoc_bd, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ethoc* @netdev_priv(%struct.net_device* %6)
  store %struct.ethoc* %7, %struct.ethoc** %3, align 8
  %8 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %9 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %8, i32 0, i32 3
  %10 = call i32 @spin_lock(i32* %9)
  br label %11

11:                                               ; preds = %36, %1
  %12 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %13 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %16 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %11
  %20 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %21 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %24 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = urem i32 %22, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ethoc_read_bd(%struct.ethoc* %27, i32 %28, %struct.ethoc_bd* %5)
  %30 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TX_BD_READY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %47

36:                                               ; preds = %19
  %37 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %38 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %42 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = urem i32 %40, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %46 = call i32 @ethoc_update_tx_stats(%struct.ethoc* %45, %struct.ethoc_bd* %5)
  br label %11

47:                                               ; preds = %35, %11
  %48 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %49 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %52 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %56 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = udiv i32 %57, 2
  %59 = icmp ule i32 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @netif_wake_queue(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %47
  %64 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %65 = load i32, i32* @INT_MASK_TX, align 4
  %66 = call i32 @ethoc_ack_irq(%struct.ethoc* %64, i32 %65)
  %67 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %68 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %67, i32 0, i32 3
  %69 = call i32 @spin_unlock(i32* %68)
  ret void
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ethoc_read_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i32 @ethoc_update_tx_stats(%struct.ethoc*, %struct.ethoc_bd*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @ethoc_ack_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
