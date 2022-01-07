; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_config_trace_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_config_trace_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.trace_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@A_TP_RX_TRC_KEY0 = common dso_local global i32 0, align 4
@A_TP_TX_TRC_KEY0 = common dso_local global i32 0, align 4
@A_TP_PIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_config_trace_filter(%struct.adapter* %0, %struct.trace_params* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.trace_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.trace_params* %1, %struct.trace_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %15 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %18 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %16, %20
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %24 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 16
  %27 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %28 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %26, %30
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %34 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %38 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %41 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %39, %43
  %45 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %46 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 20
  %49 = or i32 %44, %48
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %49, i32* %50, align 4
  %51 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %52 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %55 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %53, %57
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %61 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 16
  %64 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %65 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %63, %67
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %71 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %72, i32* %73, align 8
  %74 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %75 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %78 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %76, %80
  %82 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %83 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 20
  %86 = or i32 %81, %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %5
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, 536870912
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %90, %5
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 268435456
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @A_TP_RX_TRC_KEY0, align 4
  br label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @A_TP_TX_TRC_KEY0, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %11, align 4
  %110 = load %struct.adapter*, %struct.adapter** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = call i32 @tp_wr_indirect(%struct.adapter* %110, i32 %111, i32 %114)
  %116 = load %struct.adapter*, %struct.adapter** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = call i32 @tp_wr_indirect(%struct.adapter* %116, i32 %117, i32 %120)
  %122 = load %struct.adapter*, %struct.adapter** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @tp_wr_indirect(%struct.adapter* %122, i32 %123, i32 %126)
  %128 = load %struct.adapter*, %struct.adapter** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @tp_wr_indirect(%struct.adapter* %128, i32 %129, i32 %132)
  %134 = load %struct.adapter*, %struct.adapter** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @tp_wr_indirect(%struct.adapter* %134, i32 %135, i32 %138)
  %140 = load %struct.adapter*, %struct.adapter** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @tp_wr_indirect(%struct.adapter* %140, i32 %141, i32 %144)
  %146 = load %struct.adapter*, %struct.adapter** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @tp_wr_indirect(%struct.adapter* %146, i32 %147, i32 %150)
  %152 = load %struct.adapter*, %struct.adapter** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @tp_wr_indirect(%struct.adapter* %152, i32 %153, i32 %155)
  %157 = load %struct.adapter*, %struct.adapter** %6, align 8
  %158 = load i32, i32* @A_TP_PIO_DATA, align 4
  %159 = call i32 @t3_read_reg(%struct.adapter* %157, i32 %158)
  ret void
}

declare dso_local i32 @tp_wr_indirect(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
