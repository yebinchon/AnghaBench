; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_srrctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure_srrctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbevf_ring*, %struct.ixgbe_hw }
%struct.ixgbevf_ring = type { i32 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_SRRCTL_DROP_EN = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, i32)* @ixgbevf_configure_srrctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure_srrctl(%struct.ixgbevf_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 1
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %6, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 0
  %12 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %12, i64 %14
  store %struct.ixgbevf_ring* %15, %struct.ixgbevf_ring** %5, align 8
  %16 = load i32, i32* @IXGBE_SRRCTL_DROP_EN, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 1024)
  %24 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @IXGBE_VFSRRCTL(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFSRRCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
