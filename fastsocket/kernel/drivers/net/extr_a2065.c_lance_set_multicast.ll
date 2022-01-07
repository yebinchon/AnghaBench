; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_a2065.c_lance_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_a2065.c_lance_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lance_private = type { i64, i64, i32, %struct.lance_regs*, %struct.lance_init_block* }
%struct.lance_regs = type { i32, i32 }
%struct.lance_init_block = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@LE_MO_PROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_init_block*, align 8
  %5 = alloca %struct.lance_regs*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.lance_private* @netdev_priv(%struct.net_device* %6)
  store %struct.lance_private* %7, %struct.lance_private** %3, align 8
  %8 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %9 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %8, i32 0, i32 4
  %10 = load %struct.lance_init_block*, %struct.lance_init_block** %9, align 8
  store %struct.lance_init_block* %10, %struct.lance_init_block** %4, align 8
  %11 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %12 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %11, i32 0, i32 3
  %13 = load %struct.lance_regs*, %struct.lance_regs** %12, align 8
  store %struct.lance_regs* %13, %struct.lance_regs** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %73

18:                                               ; preds = %1
  %19 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %20 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %23 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %28 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %27, i32 0, i32 2
  %29 = load i64, i64* @jiffies, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i32 @mod_timer(i32* %28, i64 %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @netif_wake_queue(%struct.net_device* %32)
  br label %73

34:                                               ; preds = %18
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @netif_stop_queue(%struct.net_device* %35)
  %37 = load i32, i32* @LE_CSR0, align 4
  %38 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %39 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %38, i32 0, i32 1
  store volatile i32 %37, i32* %39, align 4
  %40 = load i32, i32* @LE_C0_STOP, align 4
  %41 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %42 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %41, i32 0, i32 0
  store volatile i32 %40, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @lance_init_ring(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_PROMISC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %34
  %52 = load i32, i32* @LE_MO_PROM, align 4
  %53 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %54 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %53, i32 0, i32 0
  %55 = load volatile i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store volatile i32 %56, i32* %54, align 4
  br label %66

57:                                               ; preds = %34
  %58 = load i32, i32* @LE_MO_PROM, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %61 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %60, i32 0, i32 0
  %62 = load volatile i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store volatile i32 %63, i32* %61, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @lance_load_multicast(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %57, %51
  %67 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %68 = call i32 @load_csrs(%struct.lance_private* %67)
  %69 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %70 = call i32 @init_restart_lance(%struct.lance_private* %69)
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = call i32 @netif_wake_queue(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %66, %26, %17
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @lance_load_multicast(%struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
