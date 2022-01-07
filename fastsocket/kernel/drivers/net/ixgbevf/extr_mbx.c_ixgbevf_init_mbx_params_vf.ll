; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_mbx.c_ixgbevf_init_mbx_params_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_mbx.c_ixgbevf_init_mbx_params_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mbx_info }
%struct.ixgbe_mbx_info = type { %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@IXGBE_VF_MBX_INIT_DELAY = common dso_local global i32 0, align 4
@IXGBE_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbevf_init_mbx_params_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_init_mbx_params_vf(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mbx_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 0
  store %struct.ixgbe_mbx_info* %5, %struct.ixgbe_mbx_info** %3, align 8
  %6 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @IXGBE_VF_MBX_INIT_DELAY, align 4
  %9 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %12 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
