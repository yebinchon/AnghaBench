; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.ixgbevf_ring*, %struct.net_device* }
%struct.ixgbevf_ring = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_ring*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %6 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @ixgbevf_set_rx_mode(%struct.net_device* %9)
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %12 = call i32 @ixgbevf_restore_vlan(%struct.ixgbevf_adapter* %11)
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %14 = call i32 @ixgbevf_configure_tx(%struct.ixgbevf_adapter* %13)
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %16 = call i32 @ixgbevf_configure_rx(%struct.ixgbevf_adapter* %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 1
  %26 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %26, i64 %28
  store %struct.ixgbevf_ring* %29, %struct.ixgbevf_ring** %5, align 8
  %30 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %31 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %32 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %33 = call i32 @IXGBE_DESC_UNUSED(%struct.ixgbevf_ring* %32)
  %34 = call i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_adapter* %30, %struct.ixgbevf_ring* %31, i32 %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %17

38:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ixgbevf_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_restore_vlan(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_configure_tx(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_configure_rx(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @IXGBE_DESC_UNUSED(%struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
