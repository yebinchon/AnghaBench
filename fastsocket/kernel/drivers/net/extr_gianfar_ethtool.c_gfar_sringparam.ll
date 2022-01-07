; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_sringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_sringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.gfar_private = type { i64, i64, i64, i32, i32 }

@GFAR_RX_MAX_RING_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Ring sizes must be a power of 2\0A\00", align 1
@GFAR_TX_MAX_RING_SIZE = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @gfar_sringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_sringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %9)
  store %struct.gfar_private* %10, %struct.gfar_private** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GFAR_RX_MAX_RING_SIZE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @is_power_of_2(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %114

32:                                               ; preds = %19
  %33 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GFAR_TX_MAX_RING_SIZE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %114

41:                                               ; preds = %32
  %42 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @is_power_of_2(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %114

54:                                               ; preds = %41
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_UP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %54
  %62 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %63 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %62, i32 0, i32 3
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %67 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %66, i32 0, i32 4
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @gfar_halt(%struct.net_device* %69)
  %71 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %72 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %71, i32 0, i32 4
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %75 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %74, i32 0, i32 3
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %80 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @gfar_clean_rx_ring(%struct.net_device* %78, i64 %81)
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = call i32 @stop_gfar(%struct.net_device* %83)
  br label %85

85:                                               ; preds = %61, %54
  %86 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %90 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %95 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %97 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %100 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IFF_UP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %85
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = call i32 @startup_gfar(%struct.net_device* %108)
  store i32 %109, i32* %7, align 4
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = call i32 @netif_wake_queue(%struct.net_device* %110)
  br label %112

112:                                              ; preds = %107, %85
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %47, %38, %25, %16
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfar_halt(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gfar_clean_rx_ring(%struct.net_device*, i64) #1

declare dso_local i32 @stop_gfar(%struct.net_device*) #1

declare dso_local i32 @startup_gfar(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
