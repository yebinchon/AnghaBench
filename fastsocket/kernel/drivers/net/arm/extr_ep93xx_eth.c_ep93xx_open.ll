; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ep93xx_priv = type { i32, i32, i64, i32, i64, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ep93xx_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@REG_GIINTMSK = common dso_local global i32 0, align 4
@REG_GIINTMSK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ep93xx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ep93xx_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ep93xx_priv* %7, %struct.ep93xx_priv** %4, align 8
  %8 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %9 = call i64 @ep93xx_alloc_buffers(%struct.ep93xx_priv* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %15, i32 0, i32 0
  %17 = call i32 @napi_enable(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @ep93xx_start_hw(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %22, i32 0, i32 0
  %24 = call i32 @napi_disable(i32* %23)
  %25 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %26 = call i32 @ep93xx_free_buffers(%struct.ep93xx_priv* %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %72

29:                                               ; preds = %14
  %30 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %30, i32 0, i32 7
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %39, i32 0, i32 3
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %45 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ep93xx_irq, align 4
  %48 = load i32, i32* @IRQF_SHARED, align 4
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @request_irq(i32 %46, i32 %47, i32 %48, i32 %51, %struct.net_device* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %29
  %57 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %57, i32 0, i32 0
  %59 = call i32 @napi_disable(i32* %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @ep93xx_stop_hw(%struct.net_device* %60)
  %62 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %63 = call i32 @ep93xx_free_buffers(%struct.ep93xx_priv* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %29
  %66 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %4, align 8
  %67 = load i32, i32* @REG_GIINTMSK, align 4
  %68 = load i32, i32* @REG_GIINTMSK_ENABLE, align 4
  %69 = call i32 @wrl(%struct.ep93xx_priv* %66, i32 %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netif_start_queue(%struct.net_device* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %56, %21, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ep93xx_alloc_buffers(%struct.ep93xx_priv*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i64 @ep93xx_start_hw(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ep93xx_free_buffers(%struct.ep93xx_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ep93xx_stop_hw(%struct.net_device*) #1

declare dso_local i32 @wrl(%struct.ep93xx_priv*, i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
