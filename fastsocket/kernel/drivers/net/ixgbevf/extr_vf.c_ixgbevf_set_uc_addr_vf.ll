; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_set_uc_addr_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_set_uc_addr_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mbx_info }
%struct.ixgbe_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@IXGBE_VF_SET_MACVLAN = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32*)* @ixgbevf_set_uc_addr_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_set_uc_addr_vf(%struct.ixgbe_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ixgbe_mbx_info*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  store %struct.ixgbe_mbx_info* %12, %struct.ixgbe_mbx_info** %7, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32* %13, i32** %9, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 12)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IXGBE_VT_MSGINFO_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @IXGBE_VF_SET_MACVLAN, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @memcpy(i32* %29, i32* %30, i32 6)
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %7, align 8
  %34 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (%struct.ixgbe_hw.1*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.1*
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %40 = call i32 %36(%struct.ixgbe_hw.1* %38, i32* %39, i32 3)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %32
  %44 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %7, align 8
  %45 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.0*
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %51 = call i32 %47(%struct.ixgbe_hw.0* %49, i32* %50, i32 3)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %43, %32
  %53 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IXGBE_VF_SET_MACVLAN, align 4
  %64 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %65 = or i32 %63, %64
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
