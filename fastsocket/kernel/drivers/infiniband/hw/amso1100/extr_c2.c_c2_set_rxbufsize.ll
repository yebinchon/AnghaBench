; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_set_rxbufsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2.c_c2_set_rxbufsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_port = type { i64, %struct.net_device* }
%struct.net_device = type { i64 }

@RX_BUF_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2_port*)* @c2_set_rxbufsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2_set_rxbufsize(%struct.c2_port* %0) #0 {
  %2 = alloca %struct.c2_port*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.c2_port* %0, %struct.c2_port** %2, align 8
  %4 = load %struct.c2_port*, %struct.c2_port** %2, align 8
  %5 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RX_BUF_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ETH_HLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = add i64 %17, 4
  %19 = load i64, i64* @NET_IP_ALIGN, align 8
  %20 = add i64 %18, %19
  %21 = load %struct.c2_port*, %struct.c2_port** %2, align 8
  %22 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %28

23:                                               ; preds = %1
  %24 = load i64, i64* @RX_BUF_SIZE, align 8
  %25 = add i64 4, %24
  %26 = load %struct.c2_port*, %struct.c2_port** %2, align 8
  %27 = getelementptr inbounds %struct.c2_port, %struct.c2_port* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
