; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_set_vfta_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_set_vfta_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_VF_SET_VLAN = common dso_local global i32 0, align 4
@E1000_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32, i32)* @e1000_set_vfta_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_vfta_vf(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_mbx_info*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_mbx_info* %11, %struct.e1000_mbx_info** %7, align 8
  %12 = load i32, i32* @E1000_VF_SET_VLAN, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @E1000_VT_MSGINFO_SHIFT, align 4
  %20 = shl i32 1, %19
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %26 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.e1000_hw.1*, i32*, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32)** %27, align 8
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = bitcast %struct.e1000_hw* %29 to %struct.e1000_hw.1*
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = call i32 %28(%struct.e1000_hw.1* %30, i32* %31, i32 2)
  %33 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %34 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32)** %35, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = bitcast %struct.e1000_hw* %37 to %struct.e1000_hw.0*
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %40 = call i32 %36(%struct.e1000_hw.0* %38, i32* %39, i32 2)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @E1000_VT_MSGTYPE_CTS, align 4
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %24
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @E1000_VF_SET_VLAN, align 4
  %52 = load i32, i32* @E1000_VT_MSGTYPE_NACK, align 4
  %53 = or i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %48, %24
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
