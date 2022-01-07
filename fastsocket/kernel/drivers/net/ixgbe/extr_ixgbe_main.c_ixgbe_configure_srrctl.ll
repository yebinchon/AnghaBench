; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_srrctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_srrctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_ring = type { i32 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, %struct.ixgbe_ring*)* @ixgbe_configure_srrctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure_srrctl(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 1
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %5, align 8
  %11 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* @RING_F_RSS, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %20, %2
  %32 = load i32, i32* @IXGBE_RX_HDR_SIZE, align 4
  %33 = load i32, i32* @IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %36 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %35)
  %37 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @IXGBE_SRRCTL(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %44, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_SRRCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
