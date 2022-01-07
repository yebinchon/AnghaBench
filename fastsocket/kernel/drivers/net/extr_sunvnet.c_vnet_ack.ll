; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.vnet*, %struct.TYPE_4__ }
%struct.vnet = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32 }
%struct.vio_dring_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VIO_DRING_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, i8*)* @vnet_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_ack(%struct.vnet_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnet_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  %7 = alloca %struct.vio_dring_data*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.vnet*, align 8
  %10 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %12 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.vio_dring_state*, %struct.vio_dring_state** %13, align 8
  %15 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %16 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %14, i64 %15
  store %struct.vio_dring_state* %16, %struct.vio_dring_state** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.vio_dring_data*
  store %struct.vio_dring_data* %18, %struct.vio_dring_data** %7, align 8
  %19 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %20 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VIO_DRING_DATA, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

29:                                               ; preds = %2
  %30 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %31 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @idx_is_pending(%struct.vio_dring_state* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %70

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %45 = call i32 @next_idx(i32 %43, %struct.vio_dring_state* %44)
  %46 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %47 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %49 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %48, i32 0, i32 0
  %50 = load %struct.vnet*, %struct.vnet** %49, align 8
  store %struct.vnet* %50, %struct.vnet** %9, align 8
  %51 = load %struct.vnet*, %struct.vnet** %9, align 8
  %52 = getelementptr inbounds %struct.vnet, %struct.vnet* %51, i32 0, i32 0
  %53 = load %struct.net_device*, %struct.net_device** %52, align 8
  store %struct.net_device* %53, %struct.net_device** %8, align 8
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = call i64 @netif_queue_stopped(%struct.net_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %59 = call i64 @vnet_tx_dring_avail(%struct.vio_dring_state* %58)
  %60 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %61 = call i64 @VNET_TX_WAKEUP_THRESH(%struct.vio_dring_state* %60)
  %62 = icmp sge i64 %59, %61
  br label %63

63:                                               ; preds = %57, %42
  %64 = phi i1 [ false, %42 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %41, %28
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @idx_is_pending(%struct.vio_dring_state*, i32) #1

declare dso_local i32 @next_idx(i32, %struct.vio_dring_state*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @vnet_tx_dring_avail(%struct.vio_dring_state*) #1

declare dso_local i64 @VNET_TX_WAKEUP_THRESH(%struct.vio_dring_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
