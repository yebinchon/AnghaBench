; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_update_xoff_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_update_xoff_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_ring**, i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.ixgbe_hw_stats, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw_stats = type { i32* }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@MAX_TX_PACKET_BUFFERS = common dso_local global i32 0, align 4
@__IXGBE_HANG_CHECK_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_update_xoff_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_update_xoff_received(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_hw_stats*, align 8
  %5 = alloca [8 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ixgbe_ring*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 7
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %3, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 6
  store %struct.ixgbe_hw_stats* %14, %struct.ixgbe_hw_stats** %4, align 8
  %15 = bitcast [8 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 64, i1 false)
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %24, %1
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %48 = call i32 @ixgbe_update_xoff_rx_lfc(%struct.ixgbe_adapter* %47)
  br label %125

49:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %91, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MAX_TX_PACKET_BUFFERS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %50
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %64 [
    i32 128, label %59
  ]

59:                                               ; preds = %54
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @IXGBE_PXOFFRXC(i32 %61)
  %63 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %60, i32 %62)
  store i64 %63, i64* %9, align 8
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @IXGBE_PXOFFRXCNT(i32 %66)
  %68 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %65, i32 %67)
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %70
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @netdev_get_prio_tc_map(i32 %83, i32 %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %69
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %50

94:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %122, %94
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %102, i32 0, i32 2
  %104 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %104, i64 %106
  %108 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %107, align 8
  store %struct.ixgbe_ring* %108, %struct.ixgbe_ring** %10, align 8
  %109 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %10, align 8
  %110 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %101
  %117 = load i32, i32* @__IXGBE_HANG_CHECK_ARMED, align 4
  %118 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %10, align 8
  %119 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %118, i32 0, i32 1
  %120 = call i32 @clear_bit(i32 %117, i32* %119)
  br label %121

121:                                              ; preds = %116, %101
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %95

125:                                              ; preds = %46, %95
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ixgbe_update_xoff_rx_lfc(%struct.ixgbe_adapter*) #2

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #2

declare dso_local i32 @IXGBE_PXOFFRXC(i32) #2

declare dso_local i32 @IXGBE_PXOFFRXCNT(i32) #2

declare dso_local i64 @netdev_get_prio_tc_map(i32, i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
