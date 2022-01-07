; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@NIU_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@niu_timer = common dso_local global i32 0, align 4
@LOOPBACK_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @niu_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.niu* @netdev_priv(%struct.net_device* %10)
  store %struct.niu* %11, %struct.niu** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 68
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NIU_MAX_MTU, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %116

21:                                               ; preds = %14
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETH_DATA_LEN, align 4
  %26 = icmp sgt i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ETH_DATA_LEN, align 4
  %30 = icmp sgt i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @netif_running(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %21
  store i32 0, i32* %3, align 4
  br label %116

43:                                               ; preds = %38
  %44 = load %struct.niu*, %struct.niu** %6, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @niu_full_shutdown(%struct.niu* %44, %struct.net_device* %45)
  %47 = load %struct.niu*, %struct.niu** %6, align 8
  %48 = call i32 @niu_free_channels(%struct.niu* %47)
  %49 = load %struct.niu*, %struct.niu** %6, align 8
  %50 = call i32 @niu_enable_napi(%struct.niu* %49)
  %51 = load %struct.niu*, %struct.niu** %6, align 8
  %52 = call i32 @niu_alloc_channels(%struct.niu* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %116

57:                                               ; preds = %43
  %58 = load %struct.niu*, %struct.niu** %6, align 8
  %59 = getelementptr inbounds %struct.niu, %struct.niu* %58, i32 0, i32 2
  %60 = call i32 @spin_lock_irq(i32* %59)
  %61 = load %struct.niu*, %struct.niu** %6, align 8
  %62 = call i32 @niu_init_hw(%struct.niu* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %57
  %66 = load %struct.niu*, %struct.niu** %6, align 8
  %67 = getelementptr inbounds %struct.niu, %struct.niu* %66, i32 0, i32 0
  %68 = call i32 @init_timer(%struct.TYPE_5__* %67)
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i64, i64* @HZ, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.niu*, %struct.niu** %6, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i64 %71, i64* %74, align 8
  %75 = load %struct.niu*, %struct.niu** %6, align 8
  %76 = ptrtoint %struct.niu* %75 to i64
  %77 = load %struct.niu*, %struct.niu** %6, align 8
  %78 = getelementptr inbounds %struct.niu, %struct.niu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  %80 = load i32, i32* @niu_timer, align 4
  %81 = load %struct.niu*, %struct.niu** %6, align 8
  %82 = getelementptr inbounds %struct.niu, %struct.niu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.niu*, %struct.niu** %6, align 8
  %85 = call i32 @niu_enable_interrupts(%struct.niu* %84, i32 1)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %65
  %89 = load %struct.niu*, %struct.niu** %6, align 8
  %90 = call i32 @niu_stop_hw(%struct.niu* %89)
  br label %91

91:                                               ; preds = %88, %65
  br label %92

92:                                               ; preds = %91, %57
  %93 = load %struct.niu*, %struct.niu** %6, align 8
  %94 = getelementptr inbounds %struct.niu, %struct.niu* %93, i32 0, i32 2
  %95 = call i32 @spin_unlock_irq(i32* %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %92
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netif_tx_start_all_queues(%struct.net_device* %99)
  %101 = load %struct.niu*, %struct.niu** %6, align 8
  %102 = getelementptr inbounds %struct.niu, %struct.niu* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LOOPBACK_DISABLED, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = call i32 @netif_carrier_on(%struct.net_device* %108)
  br label %110

110:                                              ; preds = %107, %98
  %111 = load %struct.niu*, %struct.niu** %6, align 8
  %112 = getelementptr inbounds %struct.niu, %struct.niu* %111, i32 0, i32 0
  %113 = call i32 @add_timer(%struct.TYPE_5__* %112)
  br label %114

114:                                              ; preds = %110, %92
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %55, %42, %18
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @niu_full_shutdown(%struct.niu*, %struct.net_device*) #1

declare dso_local i32 @niu_free_channels(%struct.niu*) #1

declare dso_local i32 @niu_enable_napi(%struct.niu*) #1

declare dso_local i32 @niu_alloc_channels(%struct.niu*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @niu_init_hw(%struct.niu*) #1

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @niu_enable_interrupts(%struct.niu*, i32) #1

declare dso_local i32 @niu_stop_hw(%struct.niu*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
