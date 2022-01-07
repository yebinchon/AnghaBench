; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_v_GetAPCI3200EepromCalibrationValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_v_GetAPCI3200EepromCalibrationValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_BoardInfos = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16*, i16*, i16*, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_GetAPCI3200EepromCalibrationValue(i32 %0, %struct.str_BoardInfos* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.str_BoardInfos*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca [2 x i16], align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca [2 x i16], align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store %struct.str_BoardInfos* %1, %struct.str_BoardInfos** %4, align 8
  store i16 0, i16* %7, align 2
  store i16 0, i16* %9, align 2
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  store i16 0, i16* %12, align 2
  store i16 0, i16* %13, align 2
  store i16 0, i16* %14, align 2
  store i16 0, i16* %15, align 2
  store i16 0, i16* %16, align 2
  store i16 0, i16* %17, align 2
  store i16 0, i16* %19, align 2
  store i16 0, i16* %20, align 2
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %21, i16 zeroext 278, i16* %5)
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = add nsw i32 %24, 256
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %5, align 2
  %27 = load i32, i32* %3, align 4
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = add nsw i32 %29, 2
  %31 = trunc i32 %30 to i16
  %32 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %27, i16 zeroext %31, i16* %7)
  store i16 0, i16* %9, align 2
  br label %33

33:                                               ; preds = %272, %2
  %34 = load i16, i16* %9, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %275

39:                                               ; preds = %33
  %40 = load i16, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %10, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %9, align 2
  %45 = zext i16 %44 to i32
  %46 = mul nsw i32 %43, %45
  %47 = add nsw i32 %41, %46
  %48 = add nsw i32 %47, 4
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %6, align 2
  %50 = load i32, i32* %3, align 4
  %51 = load i16, i16* %6, align 2
  %52 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %50, i16 zeroext %51, i16* %10)
  %53 = load i16, i16* %10, align 2
  %54 = zext i16 %53 to i32
  %55 = ashr i32 %54, 4
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %10, align 2
  %57 = load i32, i32* %3, align 4
  %58 = load i16, i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %59, 6
  %61 = trunc i32 %60 to i16
  %62 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %57, i16 zeroext %61, i16* %11)
  %63 = load i16, i16* %11, align 2
  %64 = zext i16 %63 to i32
  %65 = ashr i32 %64, 4
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %11, align 2
  %67 = load i32, i32* %3, align 4
  %68 = load i16, i16* %6, align 2
  %69 = zext i16 %68 to i32
  %70 = add nsw i32 %69, 8
  %71 = trunc i32 %70 to i16
  %72 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %67, i16 zeroext %71, i16* %12)
  %73 = load i16, i16* %12, align 2
  %74 = zext i16 %73 to i32
  %75 = ashr i32 %74, 3
  %76 = and i32 %75, 1
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %12, align 2
  %78 = load i32, i32* %3, align 4
  %79 = load i16, i16* %6, align 2
  %80 = zext i16 %79 to i32
  %81 = add nsw i32 %80, 68
  %82 = trunc i32 %81 to i16
  %83 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %78, i16 zeroext %82, i16* %13)
  %84 = load i16, i16* %13, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %13, align 2
  %88 = load i16, i16* %6, align 2
  %89 = zext i16 %88 to i32
  %90 = add nsw i32 %89, 70
  %91 = load i16, i16* %13, align 2
  %92 = zext i16 %91 to i32
  %93 = sdiv i32 %92, 16
  %94 = add nsw i32 %93, 1
  %95 = mul nsw i32 %94, 2
  %96 = add nsw i32 %90, %95
  %97 = load i16, i16* %13, align 2
  %98 = zext i16 %97 to i32
  %99 = mul nsw i32 6, %98
  %100 = add nsw i32 %96, %99
  %101 = load i16, i16* %13, align 2
  %102 = zext i16 %101 to i32
  %103 = sdiv i32 %102, 16
  %104 = add nsw i32 %103, 1
  %105 = mul nsw i32 %104, 2
  %106 = mul nsw i32 4, %105
  %107 = add nsw i32 %100, %106
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %14, align 2
  %109 = load i32, i32* %3, align 4
  %110 = load i16, i16* %14, align 2
  %111 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %109, i16 zeroext %110, i16* %15)
  %112 = load i16, i16* %15, align 2
  %113 = zext i16 %112 to i32
  %114 = ashr i32 %113, 4
  %115 = trunc i32 %114 to i16
  store i16 %115, i16* %15, align 2
  %116 = load i16, i16* %6, align 2
  store i16 %116, i16* %17, align 2
  store i16 0, i16* %19, align 2
  br label %117

117:                                              ; preds = %193, %39
  %118 = load i16, i16* %19, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* %13, align 2
  %121 = zext i16 %120 to i32
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %196

123:                                              ; preds = %117
  %124 = load i32, i32* %3, align 4
  %125 = load i16, i16* %6, align 2
  %126 = zext i16 %125 to i32
  %127 = add nsw i32 %126, 70
  %128 = load i16, i16* %13, align 2
  %129 = zext i16 %128 to i32
  %130 = sdiv i32 %129, 16
  %131 = add nsw i32 1, %130
  %132 = mul nsw i32 2, %131
  %133 = add nsw i32 %127, %132
  %134 = load i16, i16* %19, align 2
  %135 = zext i16 %134 to i32
  %136 = mul nsw i32 2, %135
  %137 = add nsw i32 %133, %136
  %138 = trunc i32 %137 to i16
  %139 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 1, i32 %124, i16 zeroext %138, i16* %20)
  %140 = load i16, i16* %20, align 2
  %141 = load %struct.str_BoardInfos*, %struct.str_BoardInfos** %4, align 8
  %142 = getelementptr inbounds %struct.str_BoardInfos, %struct.str_BoardInfos* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i16, i16* %9, align 2
  %145 = zext i16 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i16*, i16** %147, align 8
  %149 = load i16, i16* %19, align 2
  %150 = zext i16 %149 to i64
  %151 = getelementptr inbounds i16, i16* %148, i64 %150
  store i16 %140, i16* %151, align 2
  %152 = load i32, i32* %3, align 4
  %153 = load i16, i16* %6, align 2
  %154 = zext i16 %153 to i32
  %155 = add nsw i32 %154, 70
  %156 = load i16, i16* %13, align 2
  %157 = zext i16 %156 to i32
  %158 = mul nsw i32 2, %157
  %159 = load i16, i16* %13, align 2
  %160 = zext i16 %159 to i32
  %161 = sdiv i32 %160, 16
  %162 = add nsw i32 1, %161
  %163 = mul nsw i32 2, %162
  %164 = add nsw i32 %158, %163
  %165 = add nsw i32 %155, %164
  %166 = load i16, i16* %19, align 2
  %167 = zext i16 %166 to i32
  %168 = mul nsw i32 4, %167
  %169 = add nsw i32 %165, %168
  %170 = trunc i32 %169 to i16
  %171 = getelementptr inbounds [2 x i16], [2 x i16]* %18, i64 0, i64 0
  %172 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 2, i32 %152, i16 zeroext %170, i16* %171)
  %173 = getelementptr inbounds [2 x i16], [2 x i16]* %18, i64 0, i64 1
  %174 = load i16, i16* %173, align 2
  %175 = zext i16 %174 to i32
  %176 = shl i32 %175, 16
  %177 = getelementptr inbounds [2 x i16], [2 x i16]* %18, i64 0, i64 0
  %178 = load i16, i16* %177, align 2
  %179 = zext i16 %178 to i32
  %180 = add nsw i32 %176, %179
  %181 = trunc i32 %180 to i16
  %182 = load %struct.str_BoardInfos*, %struct.str_BoardInfos** %4, align 8
  %183 = getelementptr inbounds %struct.str_BoardInfos, %struct.str_BoardInfos* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i16, i16* %9, align 2
  %186 = zext i16 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i16*, i16** %188, align 8
  %190 = load i16, i16* %19, align 2
  %191 = zext i16 %190 to i64
  %192 = getelementptr inbounds i16, i16* %189, i64 %191
  store i16 %181, i16* %192, align 2
  br label %193

193:                                              ; preds = %123
  %194 = load i16, i16* %19, align 2
  %195 = add i16 %194, 1
  store i16 %195, i16* %19, align 2
  br label %117

196:                                              ; preds = %117
  store i16 0, i16* %16, align 2
  br label %197

197:                                              ; preds = %238, %196
  %198 = load i16, i16* %16, align 2
  %199 = zext i16 %198 to i32
  %200 = load i16, i16* %11, align 2
  %201 = zext i16 %200 to i32
  %202 = icmp slt i32 %199, %201
  br i1 %202, label %203, label %241

203:                                              ; preds = %197
  %204 = load i32, i32* %3, align 4
  %205 = load i16, i16* %16, align 2
  %206 = zext i16 %205 to i32
  %207 = load i16, i16* %15, align 2
  %208 = zext i16 %207 to i32
  %209 = mul nsw i32 %206, %208
  %210 = load i16, i16* %14, align 2
  %211 = zext i16 %210 to i32
  %212 = add nsw i32 %209, %211
  %213 = add nsw i32 %212, 12
  %214 = trunc i32 %213 to i16
  %215 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %216 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 2, i32 %204, i16 zeroext %214, i16* %215)
  %217 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %218 = load i16, i16* %217, align 2
  %219 = zext i16 %218 to i32
  %220 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 1
  %221 = load i16, i16* %220, align 2
  %222 = zext i16 %221 to i32
  %223 = and i32 %222, 4095
  %224 = shl i32 %223, 16
  %225 = add nsw i32 %219, %224
  %226 = trunc i32 %225 to i16
  %227 = load %struct.str_BoardInfos*, %struct.str_BoardInfos** %4, align 8
  %228 = getelementptr inbounds %struct.str_BoardInfos, %struct.str_BoardInfos* %227, i32 0, i32 0
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = load i16, i16* %9, align 2
  %231 = zext i16 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 2
  %234 = load i16*, i16** %233, align 8
  %235 = load i16, i16* %16, align 2
  %236 = zext i16 %235 to i64
  %237 = getelementptr inbounds i16, i16* %234, i64 %236
  store i16 %226, i16* %237, align 2
  br label %238

238:                                              ; preds = %203
  %239 = load i16, i16* %16, align 2
  %240 = add i16 %239, 1
  store i16 %240, i16* %16, align 2
  br label %197

241:                                              ; preds = %197
  %242 = load i32, i32* %3, align 4
  %243 = load i16, i16* %16, align 2
  %244 = zext i16 %243 to i32
  %245 = load i16, i16* %15, align 2
  %246 = zext i16 %245 to i32
  %247 = mul nsw i32 %244, %246
  %248 = load i16, i16* %14, align 2
  %249 = zext i16 %248 to i32
  %250 = add nsw i32 %247, %249
  %251 = add nsw i32 %250, 12
  %252 = trunc i32 %251 to i16
  %253 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %254 = call i32 @i_AddiHeaderRW_ReadEeprom(i32 2, i32 %242, i16 zeroext %252, i16* %253)
  %255 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 0
  %256 = load i16, i16* %255, align 2
  %257 = zext i16 %256 to i32
  %258 = getelementptr inbounds [2 x i16], [2 x i16]* %8, i64 0, i64 1
  %259 = load i16, i16* %258, align 2
  %260 = zext i16 %259 to i32
  %261 = and i32 %260, 4095
  %262 = shl i32 %261, 16
  %263 = add nsw i32 %257, %262
  %264 = trunc i32 %263 to i16
  %265 = load %struct.str_BoardInfos*, %struct.str_BoardInfos** %4, align 8
  %266 = getelementptr inbounds %struct.str_BoardInfos, %struct.str_BoardInfos* %265, i32 0, i32 0
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = load i16, i16* %9, align 2
  %269 = zext i16 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 3
  store i16 %264, i16* %271, align 8
  br label %272

272:                                              ; preds = %241
  %273 = load i16, i16* %9, align 2
  %274 = add i16 %273, 1
  store i16 %274, i16* %9, align 2
  br label %33

275:                                              ; preds = %33
  ret void
}

declare dso_local i32 @i_AddiHeaderRW_ReadEeprom(i32, i32, i16 zeroext, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
