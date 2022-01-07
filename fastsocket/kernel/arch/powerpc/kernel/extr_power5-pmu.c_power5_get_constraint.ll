; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5-pmu.c_power5_get_constraint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5-pmu.c_power5_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_BUSEVENT_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_LASTUNIT = common dso_local global i32 0, align 4
@PM_ISU0_ALT = common dso_local global i32 0, align 4
@PM_ISU0 = common dso_local global i32 0, align 4
@unit_cons = common dso_local global i64** null, align 8
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LSU1 = common dso_local global i32 0, align 4
@PM_GRS = common dso_local global i32 0, align 4
@grsel_shift = common dso_local global i32* null, align 8
@PM_GRS_SH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @power5_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PM_PMC_SH, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @PM_PMC_MSK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 6
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %201

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %14, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %15, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %15, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 1
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %16, align 4
  br label %56

48:                                               ; preds = %28
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 5242889
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 6291461
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %201

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %3
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %171

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PM_UNIT_SH, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* @PM_UNIT_MSK, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PM_LASTUNIT, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %201

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @PM_ISU0_ALT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @PM_ISU0, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i64**, i64*** @unit_cons, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %14, align 8
  %88 = load i64**, i64*** @unit_cons, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64*, i64** %88, i64 %90
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %15, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %15, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @PM_BYTE_SH, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* @PM_BYTE_MSK, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %102, 4
  br i1 %103, label %104, label %114

104:                                              ; preds = %78
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @PM_LSU1, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 -1, i32* %4, align 4
  br label %201

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 3
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %109, %78
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @PM_GRS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 7
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 6
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 7, i32 3
  store i32 %124, i32* %13, align 4
  %125 = load i32*, i32** @grsel_shift, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = shl i64 %131, %133
  %135 = load i64, i64* %14, align 8
  %136 = or i64 %135, %134
  store i64 %136, i64* %14, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @PM_GRS_SH, align 4
  %139 = ashr i32 %137, %138
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %11, align 4
  %144 = zext i32 %143 to i64
  %145 = shl i64 %142, %144
  %146 = load i64, i64* %15, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %15, align 8
  br label %148

148:                                              ; preds = %118, %114
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %9, align 4
  %156 = mul nsw i32 4, %155
  %157 = sub nsw i32 24, %156
  %158 = zext i32 %157 to i64
  %159 = shl i64 15, %158
  %160 = load i64, i64* %14, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %14, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %9, align 4
  %165 = mul nsw i32 4, %164
  %166 = sub nsw i32 24, %165
  %167 = zext i32 %166 to i64
  %168 = shl i64 %163, %167
  %169 = load i64, i64* %15, align 8
  %170 = or i64 %169, %168
  store i64 %170, i64* %15, align 8
  br label %171

171:                                              ; preds = %154, %57
  %172 = load i32, i32* %16, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i64, i64* %14, align 8
  %176 = or i64 %175, 8589934592
  store i64 %176, i64* %14, align 8
  %177 = load i64, i64* %15, align 8
  %178 = or i64 %177, 2147483648
  store i64 %178, i64* %15, align 8
  br label %188

179:                                              ; preds = %171
  %180 = load i32, i32* %16, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i64, i64* %14, align 8
  %184 = or i64 %183, 1073741824
  store i64 %184, i64* %14, align 8
  %185 = load i64, i64* %15, align 8
  %186 = or i64 %185, 268435456
  store i64 %186, i64* %15, align 8
  br label %187

187:                                              ; preds = %182, %179
  br label %188

188:                                              ; preds = %187, %174
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %189, 5
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i64, i64* %14, align 8
  %193 = or i64 %192, 2251799813685248
  store i64 %193, i64* %14, align 8
  %194 = load i64, i64* %15, align 8
  %195 = or i64 %194, 281474976710656
  store i64 %195, i64* %15, align 8
  br label %196

196:                                              ; preds = %191, %188
  %197 = load i64, i64* %14, align 8
  %198 = load i64*, i64** %6, align 8
  store i64 %197, i64* %198, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load i64*, i64** %7, align 8
  store i64 %199, i64* %200, align 8
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %196, %108, %71, %54, %27
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
