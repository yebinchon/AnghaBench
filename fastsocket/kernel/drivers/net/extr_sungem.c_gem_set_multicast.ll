; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { i32, i32, i32, i64, i32 }

@MAC_RXCFG = common dso_local global i64 0, align 8
@MAC_RXCFG_ENAB = common dso_local global i32 0, align 4
@MAC_RXCFG_PROM = common dso_local global i32 0, align 4
@MAC_RXCFG_HFE = common dso_local global i32 0, align 4
@MAC_RXCFG_SFCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gem_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.gem* @netdev_priv(%struct.net_device* %7)
  store %struct.gem* %8, %struct.gem** %3, align 8
  store i32 10000, i32* %6, align 4
  %9 = load %struct.gem*, %struct.gem** %3, align 8
  %10 = getelementptr inbounds %struct.gem, %struct.gem* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.gem*, %struct.gem** %3, align 8
  %13 = getelementptr inbounds %struct.gem, %struct.gem* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.gem*, %struct.gem** %3, align 8
  %16 = getelementptr inbounds %struct.gem, %struct.gem* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @netif_stop_queue(%struct.net_device* %21)
  %23 = load %struct.gem*, %struct.gem** %3, align 8
  %24 = getelementptr inbounds %struct.gem, %struct.gem* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC_RXCFG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.gem*, %struct.gem** %3, align 8
  %30 = call i32 @gem_setup_multicast(%struct.gem* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.gem*, %struct.gem** %3, align 8
  %33 = getelementptr inbounds %struct.gem, %struct.gem* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load %struct.gem*, %struct.gem** %3, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAC_RXCFG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %59, %20
  %45 = load %struct.gem*, %struct.gem** %3, align 8
  %46 = getelementptr inbounds %struct.gem, %struct.gem* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MAC_RXCFG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %61

59:                                               ; preds = %54
  %60 = call i32 @udelay(i32 10)
  br label %44

61:                                               ; preds = %58, %44
  %62 = load i32, i32* @MAC_RXCFG_PROM, align 4
  %63 = load i32, i32* @MAC_RXCFG_HFE, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.gem*, %struct.gem** %3, align 8
  %73 = getelementptr inbounds %struct.gem, %struct.gem* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MAC_RXCFG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @netif_wake_queue(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %61, %19
  %81 = load %struct.gem*, %struct.gem** %3, align 8
  %82 = getelementptr inbounds %struct.gem, %struct.gem* %81, i32 0, i32 2
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.gem*, %struct.gem** %3, align 8
  %85 = getelementptr inbounds %struct.gem, %struct.gem* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock_irq(i32* %85)
  ret void
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @gem_setup_multicast(%struct.gem*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
