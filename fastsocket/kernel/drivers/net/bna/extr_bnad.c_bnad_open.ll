; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bna_pause_config = type { i64, i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bna_pause_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnad* @netdev_priv(%struct.net_device* %9)
  store %struct.bnad* %10, %struct.bnad** %5, align 8
  %11 = load %struct.bnad*, %struct.bnad** %5, align 8
  %12 = getelementptr inbounds %struct.bnad, %struct.bnad* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.bnad*, %struct.bnad** %5, align 8
  %15 = call i32 @bnad_setup_tx(%struct.bnad* %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.bnad*, %struct.bnad** %5, align 8
  %21 = call i32 @bnad_setup_rx(%struct.bnad* %20, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %82

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bna_pause_config, %struct.bna_pause_config* %6, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.bna_pause_config, %struct.bna_pause_config* %6, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @ETH_HLEN, align 4
  %29 = load i32, i32* @VLAN_HLEN, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.bnad*, %struct.bnad** %5, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  %37 = load i32, i32* @ETH_FCS_LEN, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.bnad*, %struct.bnad** %5, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.bnad*, %struct.bnad** %5, align 8
  %44 = getelementptr inbounds %struct.bnad, %struct.bnad* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bna_enet_mtu_set(i32* %45, i32 %46, i32* null)
  %48 = load %struct.bnad*, %struct.bnad** %5, align 8
  %49 = getelementptr inbounds %struct.bnad, %struct.bnad* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @bna_enet_pause_config(i32* %50, %struct.bna_pause_config* %6, i32* null)
  %52 = load %struct.bnad*, %struct.bnad** %5, align 8
  %53 = getelementptr inbounds %struct.bnad, %struct.bnad* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @bna_enet_enable(i32* %54)
  %56 = load %struct.bnad*, %struct.bnad** %5, align 8
  %57 = getelementptr inbounds %struct.bnad, %struct.bnad* %56, i32 0, i32 1
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.bnad*, %struct.bnad** %5, align 8
  %61 = call i32 @bnad_enable_default_bcast(%struct.bnad* %60)
  %62 = load %struct.bnad*, %struct.bnad** %5, align 8
  %63 = call i32 @bnad_restore_vlans(%struct.bnad* %62, i32 0)
  %64 = load %struct.bnad*, %struct.bnad** %5, align 8
  %65 = getelementptr inbounds %struct.bnad, %struct.bnad* %64, i32 0, i32 1
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.bnad*, %struct.bnad** %5, align 8
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bnad_mac_addr_set_locked(%struct.bnad* %68, i32 %71)
  %73 = load %struct.bnad*, %struct.bnad** %5, align 8
  %74 = getelementptr inbounds %struct.bnad, %struct.bnad* %73, i32 0, i32 1
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.bnad*, %struct.bnad** %5, align 8
  %78 = call i32 @bnad_stats_timer_start(%struct.bnad* %77)
  %79 = load %struct.bnad*, %struct.bnad** %5, align 8
  %80 = getelementptr inbounds %struct.bnad, %struct.bnad* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  store i32 0, i32* %2, align 4
  br label %90

82:                                               ; preds = %24
  %83 = load %struct.bnad*, %struct.bnad** %5, align 8
  %84 = call i32 @bnad_destroy_tx(%struct.bnad* %83, i32 0)
  br label %85

85:                                               ; preds = %82, %18
  %86 = load %struct.bnad*, %struct.bnad** %5, align 8
  %87 = getelementptr inbounds %struct.bnad, %struct.bnad* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %25
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnad_setup_tx(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_setup_rx(%struct.bnad*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_enet_mtu_set(i32*, i32, i32*) #1

declare dso_local i32 @bna_enet_pause_config(i32*, %struct.bna_pause_config*, i32*) #1

declare dso_local i32 @bna_enet_enable(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bnad_enable_default_bcast(%struct.bnad*) #1

declare dso_local i32 @bnad_restore_vlans(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_mac_addr_set_locked(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_stats_timer_start(%struct.bnad*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bnad_destroy_tx(%struct.bnad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
