; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_correct_hw_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_correct_hw_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32, i64 }

@HW_WATCHPOINT_NUM = common dso_local global i32 0, align 4
@breakinfo = common dso_local global %struct.TYPE_2__* null, align 8
@WPIAEN0 = common dso_local global i32 0, align 4
@WPICNTEN0 = common dso_local global i32 0, align 4
@WPIAEN1 = common dso_local global i32 0, align 4
@WPICNTEN1 = common dso_local global i32 0, align 4
@WPIAEN2 = common dso_local global i32 0, align 4
@WPICNTEN2 = common dso_local global i32 0, align 4
@WPIAEN3 = common dso_local global i32 0, align 4
@WPICNTEN3 = common dso_local global i32 0, align 4
@WPIAEN4 = common dso_local global i32 0, align 4
@WPICNTEN4 = common dso_local global i32 0, align 4
@WPIAEN5 = common dso_local global i32 0, align 4
@WPICNTEN5 = common dso_local global i32 0, align 4
@WPDAEN0 = common dso_local global i32 0, align 4
@WPDCNTEN0 = common dso_local global i32 0, align 4
@WPDSRC0 = common dso_local global i32 0, align 4
@WPDACC0_OFFSET = common dso_local global i32 0, align 4
@WPDAEN1 = common dso_local global i32 0, align 4
@WPDCNTEN1 = common dso_local global i32 0, align 4
@WPDSRC1 = common dso_local global i32 0, align 4
@WPDACC1_OFFSET = common dso_local global i32 0, align 4
@WPPWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfin_correct_hw_break() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %237, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @HW_WATCHPOINT_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %240

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %236

17:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  %18 = load i32, i32* %1, align 4
  switch i32 %18, label %235 [
    i32 0, label %19
    i32 1, label %43
    i32 2, label %67
    i32 3, label %91
    i32 4, label %115
    i32 5, label %139
    i32 6, label %163
    i32 7, label %199
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @WPIAEN0, align 4
  %21 = load i32, i32* @WPICNTEN0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %2, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bfin_write_WPIA0(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i32 @bfin_write_WPIACNT0(i64 %41)
  br label %235

43:                                               ; preds = %17
  %44 = load i32, i32* @WPIAEN1, align 4
  %45 = load i32, i32* @WPICNTEN1, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %2, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %2, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @bfin_write_WPIA1(i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @bfin_write_WPIACNT1(i64 %65)
  br label %235

67:                                               ; preds = %17
  %68 = load i32, i32* @WPIAEN2, align 4
  %69 = load i32, i32* @WPICNTEN2, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %2, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %2, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bfin_write_WPIA2(i32 %78)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @bfin_write_WPIACNT2(i64 %89)
  br label %235

91:                                               ; preds = %17
  %92 = load i32, i32* @WPIAEN3, align 4
  %93 = load i32, i32* @WPICNTEN3, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %2, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %2, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bfin_write_WPIA3(i32 %102)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = call i32 @bfin_write_WPIACNT3(i64 %113)
  br label %235

115:                                              ; preds = %17
  %116 = load i32, i32* @WPIAEN4, align 4
  %117 = load i32, i32* @WPICNTEN4, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %2, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %2, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @bfin_write_WPIA4(i32 %126)
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = call i32 @bfin_write_WPIACNT4(i64 %137)
  br label %235

139:                                              ; preds = %17
  %140 = load i32, i32* @WPIAEN5, align 4
  %141 = load i32, i32* @WPICNTEN5, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %2, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %2, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @bfin_write_WPIA5(i32 %150)
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %157, %160
  %162 = call i32 @bfin_write_WPIACNT5(i64 %161)
  br label %235

163:                                              ; preds = %17
  %164 = load i32, i32* @WPDAEN0, align 4
  %165 = load i32, i32* @WPDCNTEN0, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @WPDSRC0, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %3, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %3, align 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @WPDACC0_OFFSET, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* %3, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %3, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @bfin_write_WPDA0(i32 %186)
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %189 = load i32, i32* %1, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %193, %196
  %198 = call i32 @bfin_write_WPDACNT0(i64 %197)
  br label %235

199:                                              ; preds = %17
  %200 = load i32, i32* @WPDAEN1, align 4
  %201 = load i32, i32* @WPDCNTEN1, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @WPDSRC1, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %3, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %3, align 4
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %208 = load i32, i32* %1, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @WPDACC1_OFFSET, align 4
  %214 = shl i32 %212, %213
  %215 = load i32, i32* %3, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %3, align 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %218 = load i32, i32* %1, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @bfin_write_WPDA1(i32 %222)
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %225 = load i32, i32* %1, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakinfo, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %229, %232
  %234 = call i32 @bfin_write_WPDACNT1(i64 %233)
  br label %235

235:                                              ; preds = %17, %199, %163, %139, %115, %91, %67, %43, %19
  br label %236

236:                                              ; preds = %235, %9
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %1, align 4
  br label %5

240:                                              ; preds = %5
  %241 = load i32, i32* %4, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = load i32, i32* @WPPWR, align 4
  %245 = call i32 @bfin_write_WPIACTL(i32 %244)
  %246 = call i32 (...) @CSYNC()
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* @WPPWR, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @bfin_write_WPIACTL(i32 %249)
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @bfin_write_WPDACTL(i32 %251)
  %253 = call i32 (...) @CSYNC()
  br label %254

254:                                              ; preds = %243, %240
  ret void
}

declare dso_local i32 @bfin_write_WPIA0(i32) #1

declare dso_local i32 @bfin_write_WPIACNT0(i64) #1

declare dso_local i32 @bfin_write_WPIA1(i32) #1

declare dso_local i32 @bfin_write_WPIACNT1(i64) #1

declare dso_local i32 @bfin_write_WPIA2(i32) #1

declare dso_local i32 @bfin_write_WPIACNT2(i64) #1

declare dso_local i32 @bfin_write_WPIA3(i32) #1

declare dso_local i32 @bfin_write_WPIACNT3(i64) #1

declare dso_local i32 @bfin_write_WPIA4(i32) #1

declare dso_local i32 @bfin_write_WPIACNT4(i64) #1

declare dso_local i32 @bfin_write_WPIA5(i32) #1

declare dso_local i32 @bfin_write_WPIACNT5(i64) #1

declare dso_local i32 @bfin_write_WPDA0(i32) #1

declare dso_local i32 @bfin_write_WPDACNT0(i64) #1

declare dso_local i32 @bfin_write_WPDA1(i32) #1

declare dso_local i32 @bfin_write_WPDACNT1(i64) #1

declare dso_local i32 @bfin_write_WPIACTL(i32) #1

declare dso_local i32 @CSYNC(...) #1

declare dso_local i32 @bfin_write_WPDACTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
