; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32*, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RXCTRL_DMBYPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure_rx(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 2
  store %struct.ixgbe_hw* %7, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load i32, i32* @IXGBE_RXCTRL, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = load i32, i32* @IXGBE_RXCTRL, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %11, i32 %12, i32 %16)
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = call i32 @ixgbe_setup_psrtype(%struct.ixgbe_adapter* %18)
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = call i32 @ixgbe_setup_rdrxctl(%struct.ixgbe_adapter* %20)
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = call i32 @ixgbe_setup_mrqc(%struct.ixgbe_adapter* %22)
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = call i32 @ixgbe_set_rx_buffer_len(%struct.ixgbe_adapter* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %42, %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter* %33, i32 %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @IXGBE_RXCTRL_DMBYPS, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.0*
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %64(%struct.ixgbe_hw.0* %66, i32 %67)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_setup_psrtype(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_rdrxctl(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_mrqc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_set_rx_buffer_len(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
