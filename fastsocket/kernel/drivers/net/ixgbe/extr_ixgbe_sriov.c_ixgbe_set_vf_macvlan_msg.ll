; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_macvlan_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_macvlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw, %struct.TYPE_4__* }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.1*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_VT_MSGINFO_MASK = common dso_local global i64 0, align 8
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"VF %d requested MACVLAN filter but is administratively denied\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"VF %d attempted to set invalid mac\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"VF %d has requested a MACVLAN filter but there is no space for it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_set_vf_macvlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vf_macvlan_msg(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = bitcast i64* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IXGBE_VT_MSGINFO_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* @IXGBE_VT_MSGINFO_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @drv, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @e_warn(i32 %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i32 -1, i32* %4, align 4
  br label %101

38:                                               ; preds = %31, %3
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @is_valid_ether_addr(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @drv, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @e_warn(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  store i32 -1, i32* %4, align 4
  br label %101

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %49
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 2
  store %struct.ixgbe_hw* %59, %struct.ixgbe_hw** %11, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32 (%struct.ixgbe_hw.1*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.1*
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %64(%struct.ixgbe_hw.1* %66, i32 0, i32 %69)
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.0*, i32, i64)** %74, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %77 = bitcast %struct.ixgbe_hw* %76 to %struct.ixgbe_hw.0*
  %78 = load i64, i64* %7, align 8
  %79 = call i32 %75(%struct.ixgbe_hw.0* %77, i32 0, i64 %78)
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %57, %52, %49
  br label %83

83:                                               ; preds = %82, %38
  %84 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @ixgbe_set_vf_macvlan(%struct.ixgbe_adapter* %84, i64 %85, i32 %86, i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32, i32* @drv, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @e_warn(i32 %94, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %45, %34
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @e_warn(i32, i8*, i64) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @ixgbe_set_vf_macvlan(%struct.ixgbe_adapter*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
