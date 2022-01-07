; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfb_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfb_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64*, i64* }
%struct.ath5k_rf_reg = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Rf register not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid values at offset %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_rf_reg*, i64, i64, i32)* @ath5k_hw_rfb_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %0, %struct.ath5k_rf_reg* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_hw*, align 8
  %8 = alloca %struct.ath5k_rf_reg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath5k_rf_reg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %7, align 8
  store %struct.ath5k_rf_reg* %1, %struct.ath5k_rf_reg** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ath5k_rf_reg* null, %struct.ath5k_rf_reg** %12, align 8
  store i64 0, i64* %20, align 8
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %24, align 8
  store i32 0, i32* %26, align 4
  br label %30

30:                                               ; preds = %51, %5
  %31 = load i32, i32* %26, align 4
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %38 = load i32, i32* %26, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ath5k_rf_reg, %struct.ath5k_rf_reg* %37, i64 %39
  %41 = getelementptr inbounds %struct.ath5k_rf_reg, %struct.ath5k_rf_reg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %47 = load i32, i32* %26, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ath5k_rf_reg, %struct.ath5k_rf_reg* %46, i64 %48
  store %struct.ath5k_rf_reg* %49, %struct.ath5k_rf_reg** %12, align 8
  br label %54

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %26, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %26, align 4
  br label %30

54:                                               ; preds = %45, %30
  %55 = load i64*, i64** %24, align 8
  %56 = icmp eq i64* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %12, align 8
  %59 = icmp eq %struct.ath5k_rf_reg* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %54
  %61 = call i32 (i8*, ...) @ATH5K_PRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %213

62:                                               ; preds = %57
  %63 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %12, align 8
  %64 = getelementptr inbounds %struct.ath5k_rf_reg, %struct.ath5k_rf_reg* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %14, align 8
  %66 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %12, align 8
  %67 = getelementptr inbounds %struct.ath5k_rf_reg, %struct.ath5k_rf_reg* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %15, align 8
  %70 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %12, align 8
  %71 = getelementptr inbounds %struct.ath5k_rf_reg, %struct.ath5k_rf_reg* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %23, align 8
  %74 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %12, align 8
  %75 = getelementptr inbounds %struct.ath5k_rf_reg, %struct.ath5k_rf_reg* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %16, align 8
  %78 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %79 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %16, align 8
  %85 = icmp sle i64 %84, 3
  br i1 %85, label %86, label %94

86:                                               ; preds = %62
  %87 = load i64, i64* %15, align 8
  %88 = icmp sle i64 %87, 32
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* %15, align 8
  %92 = add nsw i64 %90, %91
  %93 = icmp sle i64 %92, 319
  br i1 %93, label %97, label %94

94:                                               ; preds = %89, %86, %62
  %95 = load i64, i64* %13, align 8
  %96 = call i32 (i8*, ...) @ATH5K_PRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  store i32 0, i32* %6, align 4
  br label %213

97:                                               ; preds = %89
  %98 = load i64, i64* %23, align 8
  %99 = sub nsw i64 %98, 1
  %100 = sdiv i64 %99, 8
  %101 = load i64, i64* %13, align 8
  %102 = add nsw i64 %100, %101
  store i64 %102, i64* %18, align 8
  %103 = load i64, i64* %23, align 8
  %104 = sub nsw i64 %103, 1
  %105 = srem i64 %104, 8
  store i64 %105, i64* %17, align 8
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @ath5k_hw_bitswap(i64 %109, i64 %110)
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %20, align 8
  br label %113

113:                                              ; preds = %108, %97
  store i64 0, i64* %22, align 8
  %114 = load i64, i64* %15, align 8
  store i64 %114, i64* %25, align 8
  br label %115

115:                                              ; preds = %197, %113
  %116 = load i64, i64* %25, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %200

118:                                              ; preds = %115
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %25, align 8
  %121 = add nsw i64 %119, %120
  %122 = icmp sgt i64 %121, 8
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %128

124:                                              ; preds = %118
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %25, align 8
  %127 = add nsw i64 %125, %126
  br label %128

128:                                              ; preds = %124, %123
  %129 = phi i64 [ 8, %123 ], [ %127, %124 ]
  store i64 %129, i64* %21, align 8
  %130 = load i64, i64* %21, align 8
  %131 = trunc i64 %130 to i32
  %132 = shl i32 1, %131
  %133 = sub nsw i32 %132, 1
  %134 = load i64, i64* %17, align 8
  %135 = trunc i64 %134 to i32
  %136 = shl i32 1, %135
  %137 = sub nsw i32 %136, 1
  %138 = xor i32 %133, %137
  %139 = load i64, i64* %16, align 8
  %140 = mul nsw i64 %139, 8
  %141 = trunc i64 %140 to i32
  %142 = shl i32 %138, %141
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %19, align 8
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %171

146:                                              ; preds = %128
  %147 = load i64, i64* %19, align 8
  %148 = xor i64 %147, -1
  %149 = load i64*, i64** %24, align 8
  %150 = load i64, i64* %18, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = and i64 %152, %148
  store i64 %153, i64* %151, align 8
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* %17, align 8
  %156 = shl i64 %154, %155
  %157 = load i64, i64* %16, align 8
  %158 = mul nsw i64 %157, 8
  %159 = shl i64 %156, %158
  %160 = load i64, i64* %19, align 8
  %161 = and i64 %159, %160
  %162 = load i64*, i64** %24, align 8
  %163 = load i64, i64* %18, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = or i64 %165, %161
  store i64 %166, i64* %164, align 8
  %167 = load i64, i64* %17, align 8
  %168 = sub nsw i64 8, %167
  %169 = load i64, i64* %20, align 8
  %170 = ashr i64 %169, %168
  store i64 %170, i64* %20, align 8
  br label %192

171:                                              ; preds = %128
  %172 = load i64*, i64** %24, align 8
  %173 = load i64, i64* %18, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %19, align 8
  %177 = and i64 %175, %176
  %178 = load i64, i64* %16, align 8
  %179 = mul nsw i64 %178, 8
  %180 = ashr i64 %177, %179
  %181 = load i64, i64* %17, align 8
  %182 = ashr i64 %180, %181
  %183 = load i64, i64* %22, align 8
  %184 = shl i64 %182, %183
  %185 = load i64, i64* %20, align 8
  %186 = or i64 %185, %184
  store i64 %186, i64* %20, align 8
  %187 = load i64, i64* %21, align 8
  %188 = load i64, i64* %17, align 8
  %189 = sub nsw i64 %187, %188
  %190 = load i64, i64* %22, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %22, align 8
  br label %192

192:                                              ; preds = %171, %146
  %193 = load i64, i64* %17, align 8
  %194 = sub nsw i64 8, %193
  %195 = load i64, i64* %25, align 8
  %196 = sub nsw i64 %195, %194
  store i64 %196, i64* %25, align 8
  br label %197

197:                                              ; preds = %192
  store i64 0, i64* %17, align 8
  %198 = load i64, i64* %18, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %18, align 8
  br label %115

200:                                              ; preds = %115
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %208

204:                                              ; preds = %200
  %205 = load i64, i64* %20, align 8
  %206 = load i64, i64* %15, align 8
  %207 = call i32 @ath5k_hw_bitswap(i64 %205, i64 %206)
  br label %208

208:                                              ; preds = %204, %203
  %209 = phi i32 [ 1, %203 ], [ %207, %204 ]
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %20, align 8
  %211 = load i64, i64* %20, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %94, %60
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local i32 @ATH5K_PRINTF(i8*, ...) #1

declare dso_local i32 @ath5k_hw_bitswap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
