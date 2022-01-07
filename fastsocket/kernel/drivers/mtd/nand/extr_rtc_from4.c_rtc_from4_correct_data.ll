; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_correct_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_rtc_from4.c_rtc_from4_correct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32* }
%struct.mtd_info = type { i32 }

@rtc_from4_fio_base = common dso_local global i64 0, align 8
@RTC_FROM4_RS_ECC_CHK = common dso_local global i64 0, align 8
@RTC_FROM4_RS_ECC_CHK_ERROR = common dso_local global i16 0, align 2
@RTC_FROM4_RS_ECC = common dso_local global i64 0, align 8
@rs_decoder = common dso_local global %struct.TYPE_4__* null, align 8
@MTD_DEBUG_LEVEL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"rtc_from4_correct_data: ECC corrected %d errors on read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32*)* @rtc_from4_correct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_from4_correct_data(%struct.mtd_info* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca [6 x i32], align 16
  %15 = alloca [6 x i32], align 16
  %16 = alloca [8 x i64], align 16
  %17 = alloca i16*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i64, i64* @rtc_from4_fio_base, align 8
  %19 = load i64, i64* @RTC_FROM4_RS_ECC_CHK, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to i16*
  %22 = load volatile i16, i16* %21, align 2
  store i16 %22, i16* %13, align 2
  %23 = load i16, i16* %13, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @RTC_FROM4_RS_ECC_CHK_ERROR, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %231

30:                                               ; preds = %4
  %31 = load i64, i64* @rtc_from4_fio_base, align 8
  %32 = load i64, i64* @RTC_FROM4_RS_ECC, align 8
  %33 = add nsw i64 %31, %32
  %34 = inttoptr i64 %33 to i16*
  store i16* %34, i16** %17, align 8
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %47, %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i16*, i16** %17, align 8
  %40 = load volatile i16, i16* %39, align 2
  %41 = call i64 @bitrev8(i16 zeroext %40)
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 %43
  store i64 %41, i64* %44, align 8
  %45 = load i16*, i16** %17, align 8
  %46 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %46, i16** %17, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = trunc i64 %55 to i32
  %57 = ashr i32 %56, 0
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 8
  %63 = and i32 %62, 768
  %64 = or i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %53, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 5
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = ashr i32 %74, 2
  %76 = and i32 %75, 63
  %77 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 2
  %78 = load i64, i64* %77, align 16
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 6
  %81 = and i32 %80, 960
  %82 = or i32 %76, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %71, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 4
  store i32 %85, i32* %86, align 16
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 2
  %91 = load i64, i64* %90, align 16
  %92 = trunc i64 %91 to i32
  %93 = ashr i32 %92, 4
  %94 = and i32 %93, 15
  %95 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 3
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 %97, 4
  %99 = and i32 %98, 1008
  %100 = or i32 %94, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %89, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 3
  store i32 %103, i32* %104, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 3
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = ashr i32 %110, 6
  %112 = and i32 %111, 3
  %113 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 4
  %114 = load i64, i64* %113, align 16
  %115 = trunc i64 %114 to i32
  %116 = shl i32 %115, 2
  %117 = and i32 %116, 1020
  %118 = or i32 %112, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %107, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  store i32 %121, i32* %122, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 5
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = ashr i32 %128, 0
  %130 = and i32 %129, 255
  %131 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 6
  %132 = load i64, i64* %131, align 16
  %133 = trunc i64 %132 to i32
  %134 = shl i32 %133, 8
  %135 = and i32 %134, 768
  %136 = or i32 %130, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %125, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 1
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 6
  %142 = load i64, i64* %141, align 16
  %143 = trunc i64 %142 to i32
  %144 = ashr i32 %143, 2
  %145 = and i32 %144, 63
  %146 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 7
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = shl i32 %148, 6
  %150 = and i32 %149, 960
  %151 = or i32 %145, %150
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  store i32 %151, i32* %152, align 16
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %213, %50
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 6
  br i1 %155, label %156, label %216

156:                                              ; preds = %153
  %157 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %158 = load i32, i32* %157, align 16
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 %160
  store i32 %158, i32* %161, align 4
  store i32 1, i32* %11, align 4
  br label %162

162:                                              ; preds = %196, %156
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, 6
  br i1 %164, label %165, label %199

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %169, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %165
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %11, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  %187 = call i64 @rs_modnn(%struct.TYPE_4__* %178, i32 %186)
  %188 = getelementptr inbounds i32, i32* %177, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = xor i32 %193, %189
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %174, %165
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %162

199:                                              ; preds = %162
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %202, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 %211
  store i32 %209, i32* %212, align 4
  br label %213

213:                                              ; preds = %199
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %153

216:                                              ; preds = %153
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rs_decoder, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = bitcast i32* %218 to i64*
  %220 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %221 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %222 = call i32 @decode_rs8(%struct.TYPE_4__* %217, i64* %219, i32* %220, i32 512, i32* %221, i32 0, i32* null, i32 255, i32* null)
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %216
  %226 = load i32, i32* @MTD_DEBUG_LEVEL0, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @DEBUG(i32 %226, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %225, %216
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %29
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i64 @bitrev8(i16 zeroext) #1

declare dso_local i64 @rs_modnn(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @decode_rs8(%struct.TYPE_4__*, i64*, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
