; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_check_mac_link_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_vf.c_ixgbevf_check_mac_link_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info, %struct.ixgbe_mbx_info }
%struct.ixgbe_mac_info = type { i32 }
%struct.ixgbe_mbx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_VFLINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@IXGBE_LINKS_SPEED_82599 = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*, i32)* @ixgbevf_check_mac_link_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_check_mac_link_vf(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_mbx_info*, align 8
  %10 = alloca %struct.ixgbe_mac_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 1
  store %struct.ixgbe_mbx_info* %15, %struct.ixgbe_mbx_info** %9, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  store %struct.ixgbe_mac_info* %17, %struct.ixgbe_mac_info** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %19 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.1*
  %24 = call i32 %21(%struct.ixgbe_hw.1* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %28 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %4
  %32 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %36 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %93

40:                                               ; preds = %34
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %42 = load i32, i32* @IXGBE_VFLINKS, align 4
  %43 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %93

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @IXGBE_LINKS_SPEED_82599, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %62 [
    i32 129, label %53
    i32 128, label %56
    i32 130, label %59
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %49, %59, %56, %53
  %63 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %64 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64 (%struct.ixgbe_hw.0*, i32*, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32)** %65, align 8
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %68 = bitcast %struct.ixgbe_hw* %67 to %struct.ixgbe_hw.0*
  %69 = call i64 %66(%struct.ixgbe_hw.0* %68, i32* %13, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %93

72:                                               ; preds = %62
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 -1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %77
  br label %93

84:                                               ; preds = %72
  %85 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %86 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 -1, i32* %11, align 4
  br label %93

90:                                               ; preds = %84
  %91 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %92 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %89, %83, %71, %48, %39
  %94 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %95 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
