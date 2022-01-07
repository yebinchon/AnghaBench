; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_get_rx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_get_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_net_desc = type { i32 }
%struct.vnet_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.vio_net_desc* }
%struct.vio_dring_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vio_net_desc* (%struct.vnet_port*, %struct.vio_dring_state*, i32)* @get_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vio_net_desc* @get_rx_desc(%struct.vnet_port* %0, %struct.vio_dring_state* %1, i32 %2) #0 {
  %4 = alloca %struct.vio_net_desc*, align 8
  %5 = alloca %struct.vnet_port*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vio_net_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %5, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vnet_port*, %struct.vnet_port** %5, align 8
  %11 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.vio_net_desc*, %struct.vio_net_desc** %12, align 8
  store %struct.vio_net_desc* %13, %struct.vio_net_desc** %8, align 8
  %14 = load %struct.vnet_port*, %struct.vnet_port** %5, align 8
  %15 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vio_net_desc*, %struct.vio_net_desc** %8, align 8
  %19 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %20 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %24 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %28 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %31 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ldc_get_dring_entry(i32 %17, %struct.vio_net_desc* %18, i32 %21, i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.vio_net_desc* @ERR_PTR(i32 %37)
  store %struct.vio_net_desc* %38, %struct.vio_net_desc** %4, align 8
  br label %41

39:                                               ; preds = %3
  %40 = load %struct.vio_net_desc*, %struct.vio_net_desc** %8, align 8
  store %struct.vio_net_desc* %40, %struct.vio_net_desc** %4, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.vio_net_desc*, %struct.vio_net_desc** %4, align 8
  ret %struct.vio_net_desc* %42
}

declare dso_local i32 @ldc_get_dring_entry(i32, %struct.vio_net_desc*, i32, i32, i32, i32) #1

declare dso_local %struct.vio_net_desc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
