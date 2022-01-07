; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_main.c_mtrr_add_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_main.c_mtrr_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64, i32)*, i32 (i64, i64, i32)*, i32 (i32, i64*, i64*, i32*)* }

@mtrr_if = common dso_local global %struct.TYPE_2__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@MTRR_NUM_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mtrr: type: %u invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTRR_TYPE_WRCOMB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"mtrr: your processor doesn't support write-combining\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"mtrr: zero sized request\0A\00", align 1
@size_or_mask = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"mtrr: base or size exceeds the MTRR width\0A\00", align 1
@mtrr_mutex = common dso_local global i32 0, align 4
@num_var_ranges = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"mtrr: 0x%lx000,0x%lx000 overlaps existing 0x%lx000,0x%lx000\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"mtrr: type mismatch for %lx000,%lx000 old: %s new: %s\0A\00", align 1
@mtrr_usage_table = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"mtrr: no more MTRRs available\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtrr_add_page(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %262

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 %24(i64 %25, i64 %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %262

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MTRR_NUM_TYPES, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %262

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MTRR_TYPE_WRCOMB, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = call i32 (...) @have_wrcomb()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %262

53:                                               ; preds = %46, %42
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %262

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @size_or_mask, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @size_or_mask, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65, %60
  %71 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %262

74:                                               ; preds = %65
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  %77 = call i32 (...) @get_online_cpus()
  %78 = call i32 @mutex_lock(i32* @mtrr_mutex)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %190, %74
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @num_var_ranges, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %193

83:                                               ; preds = %79
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32 (i32, i64*, i64*, i32*)*, i32 (i32, i64*, i64*, i32*)** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 %86(i32 %87, i64* %10, i64* %11, i32* %15)
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %93, %94
  %96 = sub i64 %95, 1
  %97 = icmp ugt i64 %92, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %99, %100
  %102 = sub i64 %101, 1
  %103 = load i64, i64* %10, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98, %91, %83
  br label %190

106:                                              ; preds = %98
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %120, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %111, %112
  %114 = sub i64 %113, 1
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %115, %116
  %118 = sub i64 %117, 1
  %119 = icmp ugt i64 %114, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %110, %106
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp ule i64 %121, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = add i64 %125, %126
  %128 = sub i64 %127, 1
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %129, %130
  %132 = sub i64 %131, 1
  %133 = icmp uge i64 %128, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %124
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i32, i32* %13, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* %12, align 4
  br label %144

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143, %141
  %145 = phi i32 [ %142, %141 ], [ -2, %143 ]
  store i32 %145, i32* %13, align 4
  br label %190

146:                                              ; preds = %134
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i64 @types_compatible(i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %190

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %124, %120
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %155, i64 %156, i64 %157, i64 %158)
  br label %258

160:                                              ; preds = %110
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %15, align 4
  %167 = call i64 @types_compatible(i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %190

170:                                              ; preds = %164
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* %7, align 8
  %173 = load i32, i32* %15, align 4
  %174 = call i64 @mtrr_attrib_to_str(i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = call i64 @mtrr_attrib_to_str(i32 %175)
  %177 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %171, i64 %172, i64 %174, i64 %176)
  br label %258

178:                                              ; preds = %160
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i32*, i32** @mtrr_usage_table, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %181, %178
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %14, align 4
  br label %258

190:                                              ; preds = %169, %151, %144, %105
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %79

193:                                              ; preds = %79
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %195, align 8
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* %7, align 8
  %199 = load i32, i32* %13, align 4
  %200 = call i32 %196(i64 %197, i64 %198, i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %254

203:                                              ; preds = %193
  %204 = load i32, i32* %12, align 4
  %205 = load i64, i64* %6, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @set_mtrr(i32 %204, i64 %205, i64 %206, i32 %207, i32 0)
  %209 = load i32, i32* %13, align 4
  %210 = icmp slt i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i64 @likely(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %203
  %215 = load i32*, i32** @mtrr_usage_table, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 1, i32* %218, align 4
  br label %253

219:                                              ; preds = %203
  %220 = load i32*, i32** @mtrr_usage_table, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** @mtrr_usage_table, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %219
  %232 = load i32*, i32** @mtrr_usage_table, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %231, %219
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i64 @unlikely(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %238
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @set_mtrr(i32 %246, i64 0, i64 0, i32 0, i32 0)
  %248 = load i32*, i32** @mtrr_usage_table, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 0, i32* %251, align 4
  br label %252

252:                                              ; preds = %245, %238
  br label %253

253:                                              ; preds = %252, %214
  br label %256

254:                                              ; preds = %193
  %255 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %253
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %256, %188, %170, %154
  %259 = call i32 @mutex_unlock(i32* @mtrr_mutex)
  %260 = call i32 (...) @put_online_cpus()
  %261 = load i32, i32* %14, align 4
  store i32 %261, i32* %5, align 4
  br label %262

262:                                              ; preds = %258, %70, %56, %49, %37, %31, %18
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @have_wrcomb(...) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @types_compatible(i32, i32) #1

declare dso_local i64 @mtrr_attrib_to_str(i32) #1

declare dso_local i32 @set_mtrr(i32, i64, i64, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
