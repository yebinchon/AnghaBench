; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_rar_set_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_rar_set_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.1*, i32*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_VF_SET_MAC_ADDR = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*, i32)* @e1000_rar_set_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_rar_set_vf(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_mbx_info*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_mbx_info* %12, %struct.e1000_mbx_info** %7, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32* %13, i32** %9, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 12)
  %16 = load i32, i32* @E1000_VF_SET_MAC_ADDR, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @memcpy(i32* %18, i32* %19, i32 6)
  %21 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64 (%struct.e1000_hw.1*, i32*, i32)*, i64 (%struct.e1000_hw.1*, i32*, i32)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.1*
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %28 = call i64 %24(%struct.e1000_hw.1* %26, i32* %27, i32 3)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %3
  %32 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %33 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %39 = call i64 %35(%struct.e1000_hw.0* %37, i32* %38, i32 3)
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %31, %3
  %41 = load i32, i32* @E1000_VT_MSGTYPE_CTS, align 4
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @E1000_VF_SET_MAC_ADDR, align 4
  %52 = load i32, i32* @E1000_VT_MSGTYPE_NACK, align 4
  %53 = or i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = call i32 @e1000_read_mac_addr_vf(%struct.e1000_hw* %56)
  br label %58

58:                                               ; preds = %55, %48, %40
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @e1000_read_mac_addr_vf(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
