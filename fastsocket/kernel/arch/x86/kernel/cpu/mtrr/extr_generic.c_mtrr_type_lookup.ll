; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_generic.c_mtrr_type_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_generic.c_mtrr_type_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@mtrr_state_set = common dso_local global i32 0, align 4
@mtrr_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@num_var_ranges = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@MTRR_TYPE_UNCACHABLE = common dso_local global i32 0, align 4
@MTRR_TYPE_WRBACK = common dso_local global i32 0, align 4
@MTRR_TYPE_WRTHROUGH = common dso_local global i32 0, align 4
@mtrr_tom2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtrr_type_lookup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @mtrr_state_set, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 255, i32* %3, align 4
  br label %234

17:                                               ; preds = %2
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 255, i32* %3, align 4
  br label %234

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 4), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 1048576
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 524288
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 16
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %234

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 786432
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  store i32 8, i32* %11, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 524288
  %48 = ashr i32 %47, 14
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %3, align 4
  br label %234

56:                                               ; preds = %42
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 16777216
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  store i32 24, i32* %11, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 786432
  %62 = ashr i32 %61, 12
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 1), align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %234

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72, %26, %21
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 0), align 8
  %75 = and i32 %74, 2
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 2), align 8
  store i32 %78, i32* %3, align 4
  br label %234

79:                                               ; preds = %73
  store i32 255, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %210, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @num_var_ranges, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %213

84:                                               ; preds = %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 3), align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 2048
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %210

94:                                               ; preds = %84
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 3), align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = shl i32 %101, 32
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 3), align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PAGE_MASK, align 4
  %110 = and i32 %108, %109
  %111 = add nsw i32 %102, %110
  store i32 %111, i32* %7, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 3), align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = shl i32 %118, 32
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 3), align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PAGE_MASK, align 4
  %127 = and i32 %125, %126
  %128 = add nsw i32 %119, %127
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %131, %134
  %136 = zext i1 %135 to i32
  %137 = trunc i32 %136 to i16
  store i16 %137, i16* %12, align 2
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %141, %142
  %144 = icmp eq i32 %140, %143
  %145 = zext i1 %144 to i32
  %146 = trunc i32 %145 to i16
  store i16 %146, i16* %13, align 2
  %147 = load i16, i16* %12, align 2
  %148 = zext i16 %147 to i32
  %149 = load i16, i16* %13, align 2
  %150 = zext i16 %149 to i32
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %94
  store i32 254, i32* %3, align 4
  br label %234

153:                                              ; preds = %94
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %210

162:                                              ; preds = %153
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 3), align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 255
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp eq i32 %170, 255
  br i1 %171, label %172, label %174

172:                                              ; preds = %162
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %9, align 4
  br label %210

174:                                              ; preds = %162
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178, %174
  %183 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  store i32 %183, i32* %3, align 4
  br label %234

184:                                              ; preds = %178
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %188, %184
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196, %188
  %201 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %200, %196, %192
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  store i32 %208, i32* %3, align 4
  br label %234

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %172, %161, %93
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %80

213:                                              ; preds = %80
  %214 = load i32, i32* @mtrr_tom2, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = icmp uge i64 %218, 4294967296
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* @mtrr_tom2, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  store i32 %225, i32* %3, align 4
  br label %234

226:                                              ; preds = %220, %216
  br label %227

227:                                              ; preds = %226, %213
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 255
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %3, align 4
  br label %234

232:                                              ; preds = %227
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mtrr_state, i32 0, i32 2), align 8
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %232, %230, %224, %207, %182, %152, %77, %59, %45, %32, %20, %16
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
