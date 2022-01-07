; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32, i32, i32, i32, i32, i32 }

@JME_FLAG_SSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @jme_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.jme_adapter* %7, %struct.jme_adapter** %4, align 8
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %9 = call i32 @jme_clear_pm(%struct.jme_adapter* %8)
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %11 = call i32 @JME_NAPI_ENABLE(%struct.jme_adapter* %10)
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 5
  %14 = call i32 @tasklet_enable(i32* %13)
  %15 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %15, i32 0, i32 4
  %17 = call i32 @tasklet_enable(i32* %16)
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 3
  %20 = call i32 @tasklet_hi_enable(i32* %19)
  %21 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %21, i32 0, i32 2
  %23 = call i32 @tasklet_hi_enable(i32* %22)
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %25 = call i32 @jme_request_irq(%struct.jme_adapter* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %31 = call i32 @jme_start_irq(%struct.jme_adapter* %30)
  %32 = load i32, i32* @JME_FLAG_SSET, align 4
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %39, i32 0, i32 0
  %41 = call i32 @jme_set_settings(%struct.net_device* %38, i32* %40)
  br label %45

42:                                               ; preds = %29
  %43 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %44 = call i32 @jme_reset_phy_processor(%struct.jme_adapter* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %47 = call i32 @jme_reset_link(%struct.jme_adapter* %46)
  store i32 0, i32* %2, align 4
  br label %54

48:                                               ; preds = %28
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @netif_stop_queue(%struct.net_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @netif_carrier_off(%struct.net_device* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jme_clear_pm(%struct.jme_adapter*) #1

declare dso_local i32 @JME_NAPI_ENABLE(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @tasklet_hi_enable(i32*) #1

declare dso_local i32 @jme_request_irq(%struct.jme_adapter*) #1

declare dso_local i32 @jme_start_irq(%struct.jme_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jme_set_settings(%struct.net_device*, i32*) #1

declare dso_local i32 @jme_reset_phy_processor(%struct.jme_adapter*) #1

declare dso_local i32 @jme_reset_link(%struct.jme_adapter*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
