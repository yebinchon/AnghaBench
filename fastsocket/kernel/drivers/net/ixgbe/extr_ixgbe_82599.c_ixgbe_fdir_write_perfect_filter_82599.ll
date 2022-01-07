; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_write_perfect_filter_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_write_perfect_filter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%union.ixgbe_atr_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i32, i32*, i32* }

@IXGBE_FDIRIPSA = common dso_local global i32 0, align 4
@IXGBE_FDIRIPDA = common dso_local global i32 0, align 4
@IXGBE_FDIRPORT_DESTINATION_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRPORT = common dso_local global i32 0, align 4
@IXGBE_FDIRVLAN_FLEX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRVLAN = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_ADD_FLOW = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_FILTER_UPDATE = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_LAST = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_QUEUE_EN = common dso_local global i32 0, align 4
@IXGBE_FDIR_DROP_QUEUE = common dso_local global i64 0, align 8
@IXGBE_FDIRCMD_DROP = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_FLOW_TYPE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_RX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_VT_POOL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fdir_write_perfect_filter_82599(%struct.ixgbe_hw* %0, %union.ixgbe_atr_input* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %union.ixgbe_atr_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %14 = call i32 @IXGBE_FDIRSIPv6(i32 0)
  %15 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %16 = bitcast %union.ixgbe_atr_input* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %13, i32 %14, i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = call i32 @IXGBE_FDIRSIPv6(i32 1)
  %24 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %25 = bitcast %union.ixgbe_atr_input* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %22, i32 %23, i32 %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %32 = call i32 @IXGBE_FDIRSIPv6(i32 2)
  %33 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %34 = bitcast %union.ixgbe_atr_input* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %31, i32 %32, i32 %38)
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = load i32, i32* @IXGBE_FDIRIPSA, align 4
  %42 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %43 = bitcast %union.ixgbe_atr_input* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %40, i32 %41, i32 %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %50 = load i32, i32* @IXGBE_FDIRIPDA, align 4
  %51 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %52 = bitcast %union.ixgbe_atr_input* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %49, i32 %50, i32 %56)
  %58 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %59 = bitcast %union.ixgbe_atr_input* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohs(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @IXGBE_FDIRPORT_DESTINATION_SHIFT, align 4
  %64 = load i32, i32* %9, align 4
  %65 = shl i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %67 = bitcast %union.ixgbe_atr_input* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ntohs(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %74 = load i32, i32* @IXGBE_FDIRPORT, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %73, i32 %74, i32 %75)
  %77 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %78 = bitcast %union.ixgbe_atr_input* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @IXGBE_STORE_AS_BE16(i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @IXGBE_FDIRVLAN_FLEX_SHIFT, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %86 = bitcast %union.ixgbe_atr_input* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ntohs(i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %93 = load i32, i32* @IXGBE_FDIRVLAN, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %93, i32 %94)
  %96 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %97 = bitcast %union.ixgbe_atr_input* %96 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %106 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %105, i32 %106, i32 %107)
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %110 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %109)
  %111 = load i32, i32* @IXGBE_FDIRCMD_CMD_ADD_FLOW, align 4
  %112 = load i32, i32* @IXGBE_FDIRCMD_FILTER_UPDATE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @IXGBE_FDIRCMD_LAST, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @IXGBE_FDIRCMD_QUEUE_EN, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %12, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @IXGBE_FDIR_DROP_QUEUE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %4
  %122 = load i32, i32* @IXGBE_FDIRCMD_DROP, align 4
  %123 = load i32, i32* %12, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %121, %4
  %126 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %127 = bitcast %union.ixgbe_atr_input* %126 to %struct.TYPE_2__*
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IXGBE_FDIRCMD_FLOW_TYPE_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %12, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load i64, i64* %8, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @IXGBE_FDIRCMD_RX_QUEUE_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %6, align 8
  %141 = bitcast %union.ixgbe_atr_input* %140 to %struct.TYPE_2__*
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* @IXGBE_FDIRCMD_VT_POOL_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* %12, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %12, align 4
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %150 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %149, i32 %150, i32 %151)
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FDIRSIPv6(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_STORE_AS_BE16(i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
