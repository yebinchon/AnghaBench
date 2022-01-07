; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.igb_ring**, i32, %struct.net_device* }
%struct.igb_ring = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_configure(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_ring*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = call i32 @igb_get_hw_control(%struct.igb_adapter* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @igb_set_rx_mode(%struct.net_device* %11)
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %14 = call i32 @igb_restore_vlan(%struct.igb_adapter* %13)
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %16 = call i32 @igb_setup_tctl(%struct.igb_adapter* %15)
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %18 = call i32 @igb_setup_mrqc(%struct.igb_adapter* %17)
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %20 = call i32 @igb_setup_rctl(%struct.igb_adapter* %19)
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %22 = call i32 @igb_configure_tx(%struct.igb_adapter* %21)
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %24 = call i32 @igb_configure_rx(%struct.igb_adapter* %23)
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 2
  %27 = call i32 @igb_rx_fifo_flush_82575(i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %46, %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %35, i32 0, i32 1
  %37 = load %struct.igb_ring**, %struct.igb_ring*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %37, i64 %39
  %41 = load %struct.igb_ring*, %struct.igb_ring** %40, align 8
  store %struct.igb_ring* %41, %struct.igb_ring** %5, align 8
  %42 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %43 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %44 = call i32 @igb_desc_unused(%struct.igb_ring* %43)
  %45 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %42, i32 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %28

49:                                               ; preds = %28
  ret void
}

declare dso_local i32 @igb_get_hw_control(%struct.igb_adapter*) #1

declare dso_local i32 @igb_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @igb_restore_vlan(%struct.igb_adapter*) #1

declare dso_local i32 @igb_setup_tctl(%struct.igb_adapter*) #1

declare dso_local i32 @igb_setup_mrqc(%struct.igb_adapter*) #1

declare dso_local i32 @igb_setup_rctl(%struct.igb_adapter*) #1

declare dso_local i32 @igb_configure_tx(%struct.igb_adapter*) #1

declare dso_local i32 @igb_configure_rx(%struct.igb_adapter*) #1

declare dso_local i32 @igb_rx_fifo_flush_82575(i32*) #1

declare dso_local i32 @igb_alloc_rx_buffers(%struct.igb_ring*, i32) #1

declare dso_local i32 @igb_desc_unused(%struct.igb_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
