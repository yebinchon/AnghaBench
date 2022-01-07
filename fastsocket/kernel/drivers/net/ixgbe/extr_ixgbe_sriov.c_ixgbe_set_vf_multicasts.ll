; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_multicasts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_multicasts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.vf_data_storage* }
%struct.ixgbe_hw = type { i32 }
%struct.vf_data_storage = type { i32, i32* }

@IXGBE_VT_MSGINFO_MASK = common dso_local global i64 0, align 8
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MAX_VF_MC_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_set_vf_multicasts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vf_multicasts(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vf_data_storage*, align 8
  %10 = alloca %struct.ixgbe_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IXGBE_VT_MSGINFO_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* @IXGBE_VT_MSGINFO_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = bitcast i64* %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 1
  %28 = load %struct.vf_data_storage*, %struct.vf_data_storage** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %28, i64 %29
  store %struct.vf_data_storage* %30, %struct.vf_data_storage** %9, align 8
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 0
  store %struct.ixgbe_hw* %32, %struct.ixgbe_hw** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IXGBE_MAX_VF_MC_ENTRIES, align 4
  %35 = call i32 @min(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %38 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %55, %3
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %50 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %39

58:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %100, %58
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %62 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %59
  %66 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %67 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 5
  %74 = and i32 %73, 127
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %13, align 8
  %76 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %77 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 31
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %12, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @IXGBE_MTA(i64 %86)
  %88 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %85, i32 %87)
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %12, align 8
  %90 = trunc i64 %89 to i32
  %91 = shl i32 1, %90
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %14, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %14, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @IXGBE_MTA(i64 %96)
  %98 = load i64, i64* %14, align 8
  %99 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %95, i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %65
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %59

103:                                              ; preds = %59
  ret i32 0
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MTA(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
