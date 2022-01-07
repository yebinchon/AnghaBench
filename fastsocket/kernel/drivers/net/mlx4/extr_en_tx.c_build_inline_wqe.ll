; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_build_inline_wqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_build_inline_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_tx_desc = type { %struct.mlx4_wqe_inline_seg }
%struct.mlx4_wqe_inline_seg = type { i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@MLX4_INLINE_ALIGN = common dso_local global i32 0, align 4
@CTRL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_tx_desc*, %struct.sk_buff*, i32, i32*, i32, i8*)* @build_inline_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_inline_wqe(%struct.mlx4_en_tx_desc* %0, %struct.sk_buff* %1, i32 %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.mlx4_en_tx_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.mlx4_wqe_inline_seg*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_en_tx_desc* %0, %struct.mlx4_en_tx_desc** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %15, i32 0, i32 0
  store %struct.mlx4_wqe_inline_seg* %16, %struct.mlx4_wqe_inline_seg** %13, align 8
  %17 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %18 = load i32, i32* @CTRL_SIZE, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %6
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 -2147483648, %31
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %35 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %38 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %37, i64 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i32 @skb_headlen(%struct.sk_buff* %39)
  %41 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %36, %struct.mlx4_wqe_inline_seg* %38, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %28
  %48 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %49 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %48, i64 1
  %50 = bitcast %struct.mlx4_wqe_inline_seg* %49 to i8*
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = call i32 @skb_headlen(%struct.sk_buff* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %50, i64 %53
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i8* %54, i8* %55, i32 %62)
  br label %64

64:                                               ; preds = %47, %28
  br label %185

65:                                               ; preds = %6
  %66 = load i32, i32* %14, align 4
  %67 = or i32 -2147483648, %66
  %68 = call i8* @cpu_to_be32(i32 %67)
  %69 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %70 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i32 @skb_headlen(%struct.sk_buff* %71)
  %73 = load i32, i32* %14, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %125

75:                                               ; preds = %65
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %78 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %77, i64 1
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = call i32 @skb_headlen(%struct.sk_buff* %79)
  %81 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %76, %struct.mlx4_wqe_inline_seg* %78, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @skb_headlen(%struct.sk_buff* %82)
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %75
  %87 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %88 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %87, i64 1
  %89 = bitcast %struct.mlx4_wqe_inline_seg* %88 to i8*
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = call i32 @skb_headlen(%struct.sk_buff* %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %89, i64 %92
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @skb_headlen(%struct.sk_buff* %96)
  %98 = sub nsw i32 %95, %97
  %99 = call i32 @memcpy(i8* %93, i8* %94, i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = call i32 @skb_headlen(%struct.sk_buff* %101)
  %103 = sub nsw i32 %100, %102
  %104 = load i8*, i8** %12, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  store i8* %106, i8** %12, align 8
  br label %107

107:                                              ; preds = %86, %75
  %108 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %109 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %108, i64 1
  %110 = bitcast %struct.mlx4_wqe_inline_seg* %109 to i8*
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, i8* %110, i64 %112
  %114 = bitcast i8* %113 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %114, %struct.mlx4_wqe_inline_seg** %13, align 8
  %115 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %116 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %115, i64 1
  %117 = bitcast %struct.mlx4_wqe_inline_seg* %116 to i8*
  %118 = load i8*, i8** %12, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %121, %122
  %124 = call i32 @memcpy(i8* %117, i8* %118, i32 %123)
  br label %174

125:                                              ; preds = %65
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %128 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %127, i64 1
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %126, %struct.mlx4_wqe_inline_seg* %128, i32 %129)
  %131 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %132 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %131, i64 1
  %133 = bitcast %struct.mlx4_wqe_inline_seg* %132 to i8*
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr i8, i8* %133, i64 %135
  %137 = bitcast i8* %136 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %137, %struct.mlx4_wqe_inline_seg** %13, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %141 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %140, i64 1
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = call i32 @skb_headlen(%struct.sk_buff* %142)
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %138, i32 %139, %struct.mlx4_wqe_inline_seg* %141, i32 %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %148 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %147)
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %125
  %153 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %154 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %153, i64 1
  %155 = bitcast %struct.mlx4_wqe_inline_seg* %154 to i8*
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = call i32 @skb_headlen(%struct.sk_buff* %156)
  %158 = sext i32 %157 to i64
  %159 = getelementptr i8, i8* %155, i64 %158
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr i8, i8* %159, i64 %162
  %164 = load i8*, i8** %12, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %166 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %165)
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @memcpy(i8* %163, i8* %164, i32 %171)
  br label %173

173:                                              ; preds = %152, %125
  br label %174

174:                                              ; preds = %173, %107
  %175 = call i32 (...) @wmb()
  %176 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %14, align 4
  %180 = sub nsw i32 %178, %179
  %181 = or i32 -2147483648, %180
  %182 = call i8* @cpu_to_be32(i32 %181)
  %183 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %13, align 8
  %184 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %174, %64
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, %struct.mlx4_wqe_inline_seg*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, %struct.mlx4_wqe_inline_seg*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
