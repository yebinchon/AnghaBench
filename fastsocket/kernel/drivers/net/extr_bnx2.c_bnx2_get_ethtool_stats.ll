; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.bnx2 = type { i64, i64 }

@BNX2_NUM_STATS = common dso_local global i32 0, align 4
@BNX2_CHIP_ID_5706_A0 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5706_A1 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5706_A2 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5708_A0 = common dso_local global i64 0, align 8
@bnx2_5706_stats_len_arr = common dso_local global i32* null, align 8
@bnx2_5708_stats_len_arr = common dso_local global i32* null, align 8
@bnx2_stats_offset_arr = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @bnx2_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnx2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.bnx2* @netdev_priv(%struct.net_device* %13)
  store %struct.bnx2* %14, %struct.bnx2** %7, align 8
  %15 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @BNX2_NUM_STATS, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %26, i32 0, i32 %30)
  br label %130

32:                                               ; preds = %3
  %33 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %34 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %33)
  %35 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %39 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %38)
  %40 = load i64, i64* @BNX2_CHIP_ID_5706_A1, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %44 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %43)
  %45 = load i64, i64* @BNX2_CHIP_ID_5706_A2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %49 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %48)
  %50 = load i64, i64* @BNX2_CHIP_ID_5708_A0, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %42, %37, %32
  %53 = load i32*, i32** @bnx2_5706_stats_len_arr, align 8
  store i32* %53, i32** %11, align 8
  br label %56

54:                                               ; preds = %47
  %55 = load i32*, i32** @bnx2_5708_stats_len_arr, align 8
  store i32* %55, i32** %11, align 8
  br label %56

56:                                               ; preds = %54, %52
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %127, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @BNX2_NUM_STATS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %130

61:                                               ; preds = %57
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 0, i32* %72, align 4
  br label %127

73:                                               ; preds = %61
  %74 = load i64*, i64** @bnx2_stats_offset_arr, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %12, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %99

85:                                               ; preds = %73
  %86 = load i32*, i32** %9, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %89, %93
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %127

99:                                               ; preds = %73
  %100 = load i32*, i32** %9, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 32
  %105 = load i32*, i32** %9, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %104, %109
  %111 = load i32*, i32** %10, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 32
  %116 = add nsw i32 %110, %115
  %117 = load i32*, i32** %10, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %116, %121
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %99, %85, %68
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %57

130:                                              ; preds = %25, %57
  ret void
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @BNX2_CHIP_ID(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
