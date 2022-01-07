; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_mbx.c_ixgbevf_check_for_bit_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_mbx.c_ixgbevf_check_for_bit_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_ERR_MBX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbevf_check_for_bit_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbevf_check_for_bit_vf(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = call i32 @ixgbevf_read_v2p_mailbox(%struct.ixgbe_hw* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @IXGBE_ERR_MBX, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* %6, align 8
  ret i64 %23
}

declare dso_local i32 @ixgbevf_read_v2p_mailbox(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
