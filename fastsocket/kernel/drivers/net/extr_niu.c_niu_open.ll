; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@niu_timer = common dso_local global i32 0, align 4
@LOOPBACK_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @niu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.niu* @netdev_priv(%struct.net_device* %6)
  store %struct.niu* %7, %struct.niu** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_carrier_off(%struct.net_device* %8)
  %10 = load %struct.niu*, %struct.niu** %4, align 8
  %11 = call i32 @niu_alloc_channels(%struct.niu* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.niu*, %struct.niu** %4, align 8
  %17 = call i32 @niu_enable_interrupts(%struct.niu* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %92

21:                                               ; preds = %15
  %22 = load %struct.niu*, %struct.niu** %4, align 8
  %23 = call i32 @niu_request_irq(%struct.niu* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %92

27:                                               ; preds = %21
  %28 = load %struct.niu*, %struct.niu** %4, align 8
  %29 = call i32 @niu_enable_napi(%struct.niu* %28)
  %30 = load %struct.niu*, %struct.niu** %4, align 8
  %31 = getelementptr inbounds %struct.niu, %struct.niu* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.niu*, %struct.niu** %4, align 8
  %34 = call i32 @niu_init_hw(%struct.niu* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %27
  %38 = load %struct.niu*, %struct.niu** %4, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 0
  %40 = call i32 @init_timer(%struct.TYPE_5__* %39)
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* @HZ, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.niu*, %struct.niu** %4, align 8
  %45 = getelementptr inbounds %struct.niu, %struct.niu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i64 %43, i64* %46, align 8
  %47 = load %struct.niu*, %struct.niu** %4, align 8
  %48 = ptrtoint %struct.niu* %47 to i64
  %49 = load %struct.niu*, %struct.niu** %4, align 8
  %50 = getelementptr inbounds %struct.niu, %struct.niu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* @niu_timer, align 4
  %53 = load %struct.niu*, %struct.niu** %4, align 8
  %54 = getelementptr inbounds %struct.niu, %struct.niu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.niu*, %struct.niu** %4, align 8
  %57 = call i32 @niu_enable_interrupts(%struct.niu* %56, i32 1)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %37
  %61 = load %struct.niu*, %struct.niu** %4, align 8
  %62 = call i32 @niu_stop_hw(%struct.niu* %61)
  br label %63

63:                                               ; preds = %60, %37
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.niu*, %struct.niu** %4, align 8
  %66 = getelementptr inbounds %struct.niu, %struct.niu* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.niu*, %struct.niu** %4, align 8
  %72 = call i32 @niu_disable_napi(%struct.niu* %71)
  br label %89

73:                                               ; preds = %64
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @netif_tx_start_all_queues(%struct.net_device* %74)
  %76 = load %struct.niu*, %struct.niu** %4, align 8
  %77 = getelementptr inbounds %struct.niu, %struct.niu* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LOOPBACK_DISABLED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = call i32 @netif_carrier_on(%struct.net_device* %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.niu*, %struct.niu** %4, align 8
  %87 = getelementptr inbounds %struct.niu, %struct.niu* %86, i32 0, i32 0
  %88 = call i32 @add_timer(%struct.TYPE_5__* %87)
  store i32 0, i32* %2, align 4
  br label %97

89:                                               ; preds = %70
  %90 = load %struct.niu*, %struct.niu** %4, align 8
  %91 = call i32 @niu_free_irq(%struct.niu* %90)
  br label %92

92:                                               ; preds = %89, %26, %20
  %93 = load %struct.niu*, %struct.niu** %4, align 8
  %94 = call i32 @niu_free_channels(%struct.niu* %93)
  br label %95

95:                                               ; preds = %92, %14
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %85
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @niu_alloc_channels(%struct.niu*) #1

declare dso_local i32 @niu_enable_interrupts(%struct.niu*, i32) #1

declare dso_local i32 @niu_request_irq(%struct.niu*) #1

declare dso_local i32 @niu_enable_napi(%struct.niu*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @niu_init_hw(%struct.niu*) #1

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @niu_stop_hw(%struct.niu*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @niu_disable_napi(%struct.niu*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @niu_free_irq(%struct.niu*) #1

declare dso_local i32 @niu_free_channels(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
