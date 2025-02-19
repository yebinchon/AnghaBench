; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_set_vfta_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_set_vfta_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_VF_SET_VLAN = common dso_local global i32 0, align 4
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32)* @ixgbevf_set_vfta_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_set_vfta_vf(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @IXGBE_VF_SET_VLAN, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IXGBE_VT_MSGINFO_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %22 = call i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw* %20, i32* %21, i32 2)
  ret i32 0
}

declare dso_local i32 @ixgbevf_write_msg_read_ack(%struct.ixgbe_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
