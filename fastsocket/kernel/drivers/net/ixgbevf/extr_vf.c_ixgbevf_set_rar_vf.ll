; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_set_rar_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_set_rar_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.ixgbe_mbx_info }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_mbx_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_VF_SET_MAC_ADDR = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32*, i32)* @ixgbevf_set_rar_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbevf_set_rar_vf(%struct.ixgbe_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_mbx_info*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 1
  store %struct.ixgbe_mbx_info* %14, %struct.ixgbe_mbx_info** %9, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32* %15, i32** %11, align 8
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 0, i32 12)
  %18 = load i32, i32* @IXGBE_VF_SET_MAC_ADDR, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @memcpy(i32* %20, i32* %21, i32 6)
  %23 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %24 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64 (%struct.ixgbe_hw.1*, i32*, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.1*
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %30 = call i64 %26(%struct.ixgbe_hw.1* %28, i32* %29, i32 3)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %4
  %34 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %35 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64 (%struct.ixgbe_hw.0*, i32*, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32)** %36, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = bitcast %struct.ixgbe_hw* %38 to %struct.ixgbe_hw.0*
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %41 = call i64 %37(%struct.ixgbe_hw.0* %39, i32* %40, i32 3)
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %33, %4
  %43 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IXGBE_VF_SET_MAC_ADDR, align 4
  %54 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ixgbevf_get_mac_addr_vf(%struct.ixgbe_hw* %58, i32 %62)
  br label %64

64:                                               ; preds = %57, %50, %42
  %65 = load i64, i64* %12, align 8
  ret i64 %65
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ixgbevf_get_mac_addr_vf(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
