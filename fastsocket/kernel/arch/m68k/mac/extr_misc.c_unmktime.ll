; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_unmktime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_unmktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unmktime.__mon_yday = internal constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@SECS_PER_DAY = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i64 0, align 8
@SECS_PER_MINUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32*, i32*, i32*, i32*, i32*)* @unmktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmktime(i64 %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i16*, align 8
  %23 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @SECS_PER_DAY, align 8
  %26 = udiv i64 %24, %25
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @SECS_PER_DAY, align 8
  %29 = urem i64 %27, %28
  store i64 %29, i64* %18, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %18, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %18, align 8
  br label %33

33:                                               ; preds = %36, %8
  %34 = load i64, i64* %18, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* @SECS_PER_DAY, align 8
  %38 = load i64, i64* %18, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %17, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %17, align 8
  br label %33

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* @SECS_PER_DAY, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* @SECS_PER_DAY, align 8
  %49 = load i64, i64* %18, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %18, align 8
  %51 = load i64, i64* %17, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %17, align 8
  br label %43

53:                                               ; preds = %43
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* @SECS_PER_HOUR, align 8
  %56 = sdiv i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %14, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i64, i64* @SECS_PER_HOUR, align 8
  %60 = load i64, i64* %18, align 8
  %61 = srem i64 %60, %59
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* @SECS_PER_MINUTE, align 8
  %64 = sdiv i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %15, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* @SECS_PER_MINUTE, align 8
  %69 = srem i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %16, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i64, i64* %17, align 8
  %73 = add nsw i64 4, %72
  %74 = srem i64 %73, 7
  store i64 %74, i64* %20, align 8
  %75 = load i64, i64* %20, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %53
  %78 = load i64, i64* %20, align 8
  %79 = add nsw i64 %78, 7
  store i64 %79, i64* %20, align 8
  br label %80

80:                                               ; preds = %77, %53
  store i64 1970, i64* %19, align 8
  br label %81

81:                                               ; preds = %107, %80
  %82 = load i64, i64* %17, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %19, align 8
  %87 = srem i64 %86, 4
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i64, i64* %19, align 8
  %91 = srem i64 %90, 100
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %19, align 8
  %95 = srem i64 %94, 400
  %96 = icmp eq i64 %95, 0
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ true, %89 ], [ %96, %93 ]
  br label %99

99:                                               ; preds = %97, %84
  %100 = phi i1 [ false, %84 ], [ %98, %97 ]
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 366, i32 365
  %103 = sext i32 %102 to i64
  %104 = icmp sge i64 %85, %103
  br label %105

105:                                              ; preds = %99, %81
  %106 = phi i1 [ true, %81 ], [ %104, %99 ]
  br i1 %106, label %107, label %191

107:                                              ; preds = %105
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* %17, align 8
  %110 = sdiv i64 %109, 365
  %111 = add nsw i64 %108, %110
  %112 = load i64, i64* %17, align 8
  %113 = srem i64 %112, 365
  %114 = icmp slt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %111, %116
  store i64 %117, i64* %23, align 8
  %118 = load i64, i64* %23, align 8
  %119 = load i64, i64* %19, align 8
  %120 = sub nsw i64 %118, %119
  %121 = mul nsw i64 %120, 365
  %122 = load i64, i64* %23, align 8
  %123 = sub nsw i64 %122, 1
  %124 = sdiv i64 %123, 4
  %125 = load i64, i64* %23, align 8
  %126 = sub nsw i64 %125, 1
  %127 = srem i64 %126, 4
  %128 = icmp slt i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %124, %130
  %132 = load i64, i64* %23, align 8
  %133 = sub nsw i64 %132, 1
  %134 = sdiv i64 %133, 100
  %135 = load i64, i64* %23, align 8
  %136 = sub nsw i64 %135, 1
  %137 = srem i64 %136, 100
  %138 = icmp slt i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = sub nsw i64 %134, %140
  %142 = sub nsw i64 %131, %141
  %143 = load i64, i64* %23, align 8
  %144 = sub nsw i64 %143, 1
  %145 = sdiv i64 %144, 400
  %146 = load i64, i64* %23, align 8
  %147 = sub nsw i64 %146, 1
  %148 = srem i64 %147, 400
  %149 = icmp slt i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %145, %151
  %153 = add nsw i64 %142, %152
  %154 = add nsw i64 %121, %153
  %155 = load i64, i64* %19, align 8
  %156 = sub nsw i64 %155, 1
  %157 = sdiv i64 %156, 4
  %158 = load i64, i64* %19, align 8
  %159 = sub nsw i64 %158, 1
  %160 = srem i64 %159, 4
  %161 = icmp slt i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = sext i32 %162 to i64
  %164 = sub nsw i64 %157, %163
  %165 = load i64, i64* %19, align 8
  %166 = sub nsw i64 %165, 1
  %167 = sdiv i64 %166, 100
  %168 = load i64, i64* %19, align 8
  %169 = sub nsw i64 %168, 1
  %170 = srem i64 %169, 100
  %171 = icmp slt i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %167, %173
  %175 = sub nsw i64 %164, %174
  %176 = load i64, i64* %19, align 8
  %177 = sub nsw i64 %176, 1
  %178 = sdiv i64 %177, 400
  %179 = load i64, i64* %19, align 8
  %180 = sub nsw i64 %179, 1
  %181 = srem i64 %180, 400
  %182 = icmp slt i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %178, %184
  %186 = add nsw i64 %175, %185
  %187 = sub nsw i64 %154, %186
  %188 = load i64, i64* %17, align 8
  %189 = sub nsw i64 %188, %187
  store i64 %189, i64* %17, align 8
  %190 = load i64, i64* %23, align 8
  store i64 %190, i64* %19, align 8
  br label %81

191:                                              ; preds = %105
  %192 = load i64, i64* %19, align 8
  %193 = sub nsw i64 %192, 1900
  %194 = trunc i64 %193 to i32
  %195 = load i32*, i32** %11, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i64, i64* %17, align 8
  store i64 %196, i64* %21, align 8
  %197 = load i64, i64* %19, align 8
  %198 = srem i64 %197, 4
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %191
  %201 = load i64, i64* %19, align 8
  %202 = srem i64 %201, 100
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %19, align 8
  %206 = srem i64 %205, 400
  %207 = icmp eq i64 %206, 0
  br label %208

208:                                              ; preds = %204, %200
  %209 = phi i1 [ true, %200 ], [ %207, %204 ]
  br label %210

210:                                              ; preds = %208, %191
  %211 = phi i1 [ false, %191 ], [ %209, %208 ]
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [2 x [13 x i16]], [2 x [13 x i16]]* @unmktime.__mon_yday, i64 0, i64 %213
  %215 = getelementptr inbounds [13 x i16], [13 x i16]* %214, i64 0, i64 0
  store i16* %215, i16** %22, align 8
  store i64 11, i64* %19, align 8
  br label %216

216:                                              ; preds = %225, %210
  %217 = load i64, i64* %17, align 8
  %218 = load i16*, i16** %22, align 8
  %219 = load i64, i64* %19, align 8
  %220 = getelementptr inbounds i16, i16* %218, i64 %219
  %221 = load i16, i16* %220, align 2
  %222 = zext i16 %221 to i64
  %223 = icmp slt i64 %217, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %19, align 8
  %227 = add nsw i64 %226, -1
  store i64 %227, i64* %19, align 8
  br label %216

228:                                              ; preds = %216
  %229 = load i16*, i16** %22, align 8
  %230 = load i64, i64* %19, align 8
  %231 = getelementptr inbounds i16, i16* %229, i64 %230
  %232 = load i16, i16* %231, align 2
  %233 = zext i16 %232 to i64
  %234 = load i64, i64* %17, align 8
  %235 = sub nsw i64 %234, %233
  store i64 %235, i64* %17, align 8
  %236 = load i64, i64* %19, align 8
  %237 = trunc i64 %236 to i32
  %238 = load i32*, i32** %12, align 8
  store i32 %237, i32* %238, align 4
  %239 = load i64, i64* %17, align 8
  %240 = add nsw i64 %239, 1
  %241 = trunc i64 %240 to i32
  %242 = load i32*, i32** %13, align 8
  store i32 %241, i32* %242, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
