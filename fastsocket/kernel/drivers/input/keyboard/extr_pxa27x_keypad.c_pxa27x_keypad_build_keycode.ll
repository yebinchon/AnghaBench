; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_build_keycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_build_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i16*, i32*, %struct.input_dev*, %struct.pxa27x_keypad_platform_data* }
%struct.input_dev = type { i32, i32 }
%struct.pxa27x_keypad_platform_data = type { i32, i32*, i32, i16*, i16, i16, i32, i16, i16, i32, i64, i64 }

@MATRIX_ROW_SHIFT = common dso_local global i32 0, align 4
@MAX_MATRIX_KEY_NUM = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa27x_keypad*)* @pxa27x_keypad_build_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_keypad_build_keycode(%struct.pxa27x_keypad* %0) #0 {
  %2 = alloca %struct.pxa27x_keypad*, align 8
  %3 = alloca %struct.pxa27x_keypad_platform_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pxa27x_keypad* %0, %struct.pxa27x_keypad** %2, align 8
  %11 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %12 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %11, i32 0, i32 3
  %13 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %12, align 8
  store %struct.pxa27x_keypad_platform_data* %13, %struct.pxa27x_keypad_platform_data** %3, align 8
  %14 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %15 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %14, i32 0, i32 2
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %53, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %20 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %25 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @KEY_ROW(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @KEY_COL(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MATRIX_ROW_SHIFT, align 4
  %38 = call i32 @MATRIX_SCAN_CODE(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call zeroext i16 @KEY_VAL(i32 %39)
  store i16 %40, i16* %5, align 2
  %41 = load i16, i16* %5, align 2
  %42 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %43 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %42, i32 0, i32 0
  %44 = load i16*, i16** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  store i16 %41, i16* %47, align 2
  %48 = load i16, i16* %5, align 2
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__set_bit(i16 zeroext %48, i32 %51)
  br label %53

53:                                               ; preds = %23
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %17

56:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %60 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %65 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %64, i32 0, i32 3
  %66 = load i16*, i16** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  %70 = load i16, i16* %69, align 2
  store i16 %70, i16* %5, align 2
  %71 = load i16, i16* %5, align 2
  %72 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %73 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %72, i32 0, i32 0
  %74 = load i16*, i16** %73, align 8
  %75 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %74, i64 %78
  store i16 %71, i16* %79, align 2
  %80 = load i16, i16* %5, align 2
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__set_bit(i16 zeroext %80, i32 %83)
  br label %85

85:                                               ; preds = %63
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %57

88:                                               ; preds = %57
  %89 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %90 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %89, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %159

93:                                               ; preds = %88
  %94 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %95 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %94, i32 0, i32 4
  %96 = load i16, i16* %95, align 8
  %97 = zext i16 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %93
  %100 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %101 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %100, i32 0, i32 5
  %102 = load i16, i16* %101, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %99
  %106 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %107 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %106, i32 0, i32 4
  %108 = load i16, i16* %107, align 8
  store i16 %108, i16* %5, align 2
  %109 = load i16, i16* %5, align 2
  %110 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %111 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %110, i32 0, i32 0
  %112 = load i16*, i16** %111, align 8
  %113 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %114 = add nsw i32 %113, 0
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %112, i64 %115
  store i16 %109, i16* %116, align 2
  %117 = load i16, i16* %5, align 2
  %118 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @__set_bit(i16 zeroext %117, i32 %120)
  %122 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %123 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %122, i32 0, i32 5
  %124 = load i16, i16* %123, align 2
  store i16 %124, i16* %5, align 2
  %125 = load i16, i16* %5, align 2
  %126 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %127 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %126, i32 0, i32 0
  %128 = load i16*, i16** %127, align 8
  %129 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i16, i16* %128, i64 %131
  store i16 %125, i16* %132, align 2
  %133 = load i16, i16* %5, align 2
  %134 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @__set_bit(i16 zeroext %133, i32 %136)
  %138 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %139 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 -1, i32* %141, align 4
  br label %158

142:                                              ; preds = %99, %93
  %143 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %144 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %147 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %145, i32* %149, align 4
  %150 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %151 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = trunc i32 %152 to i16
  %154 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %155 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @__set_bit(i16 zeroext %153, i32 %156)
  br label %158

158:                                              ; preds = %142, %105
  br label %159

159:                                              ; preds = %158, %88
  %160 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %161 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %160, i32 0, i32 10
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %230

164:                                              ; preds = %159
  %165 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %166 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %165, i32 0, i32 7
  %167 = load i16, i16* %166, align 8
  %168 = zext i16 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %213

170:                                              ; preds = %164
  %171 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %172 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %171, i32 0, i32 8
  %173 = load i16, i16* %172, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %213

176:                                              ; preds = %170
  %177 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %178 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %177, i32 0, i32 7
  %179 = load i16, i16* %178, align 8
  store i16 %179, i16* %5, align 2
  %180 = load i16, i16* %5, align 2
  %181 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %182 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %181, i32 0, i32 0
  %183 = load i16*, i16** %182, align 8
  %184 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i16, i16* %183, i64 %186
  store i16 %180, i16* %187, align 2
  %188 = load i16, i16* %5, align 2
  %189 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %190 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @__set_bit(i16 zeroext %188, i32 %191)
  %193 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %194 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %193, i32 0, i32 8
  %195 = load i16, i16* %194, align 2
  store i16 %195, i16* %5, align 2
  %196 = load i16, i16* %5, align 2
  %197 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %198 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %197, i32 0, i32 0
  %199 = load i16*, i16** %198, align 8
  %200 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %201 = add nsw i32 %200, 3
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i16, i16* %199, i64 %202
  store i16 %196, i16* %203, align 2
  %204 = load i16, i16* %5, align 2
  %205 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %206 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @__set_bit(i16 zeroext %204, i32 %207)
  %209 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %210 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 -1, i32* %212, align 4
  br label %229

213:                                              ; preds = %170, %164
  %214 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %215 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %218 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 %216, i32* %220, align 4
  %221 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %222 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 4
  %224 = trunc i32 %223 to i16
  %225 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %226 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @__set_bit(i16 zeroext %224, i32 %227)
  br label %229

229:                                              ; preds = %213, %176
  br label %230

230:                                              ; preds = %229, %159
  %231 = load i32, i32* @KEY_RESERVED, align 4
  %232 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %233 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @__clear_bit(i32 %231, i32 %234)
  ret void
}

declare dso_local i32 @KEY_ROW(i32) #1

declare dso_local i32 @KEY_COL(i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local zeroext i16 @KEY_VAL(i32) #1

declare dso_local i32 @__set_bit(i16 zeroext, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
