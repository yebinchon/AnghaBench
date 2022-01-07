; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i64, %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i32, i32, i64, i32, %struct.nes_hw_tune_timer }
%struct.nes_hw_tune_timer = type { i64, i64, i64, i64, i64 }

@NES_TIMER_INT_LIMIT_DYNAMIC = common dso_local global i32 0, align 4
@NES_TIMER_INT_LIMIT = common dso_local global i32 0, align 4
@NES_PERIODIC_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @nes_netdev_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_netdev_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_adapter*, align 8
  %8 = alloca %struct.nes_hw_tune_timer*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %10)
  store %struct.nes_vnic* %11, %struct.nes_vnic** %5, align 8
  %12 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %13 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %12, i32 0, i32 0
  %14 = load %struct.nes_device*, %struct.nes_device** %13, align 8
  store %struct.nes_device* %14, %struct.nes_device** %6, align 8
  %15 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %16 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %15, i32 0, i32 1
  %17 = load %struct.nes_adapter*, %struct.nes_adapter** %16, align 8
  store %struct.nes_adapter* %17, %struct.nes_adapter** %7, align 8
  %18 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %18, i32 0, i32 5
  store %struct.nes_hw_tune_timer* %19, %struct.nes_hw_tune_timer** %8, align 8
  %20 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %20, i32 0, i32 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %8, align 8
  %33 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %2
  %35 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %8, align 8
  %44 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %8, align 8
  %55 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %8, align 8
  %66 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %8, align 8
  %77 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %79, i32 0, i32 4
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %89 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %78
  %93 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %94 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* @NES_TIMER_INT_LIMIT_DYNAMIC, align 4
  %96 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %97 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %99 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %101 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %106 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %109 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %92
  br label %134

111:                                              ; preds = %78
  %112 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %113 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @NES_TIMER_INT_LIMIT, align 4
  %115 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %116 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %118 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %111
  %122 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %123 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @NES_PERIODIC_CONTROL, align 8
  %126 = add nsw i64 %124, %125
  %127 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %128 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %129, 8
  %131 = or i32 -2147483648, %130
  %132 = call i32 @nes_write32(i64 %126, i32 %131)
  br label %133

133:                                              ; preds = %121, %111
  br label %134

134:                                              ; preds = %133, %110
  ret i32 0
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_write32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
