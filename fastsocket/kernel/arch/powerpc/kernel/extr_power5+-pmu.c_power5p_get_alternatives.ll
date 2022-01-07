; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5+-pmu.c_power5p_get_alternatives.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power5+-pmu.c_power5p_get_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ALT = common dso_local global i32 0, align 4
@event_alternatives = common dso_local global i64** null, align 8
@PPMU_ONLY_COUNT_RUN = common dso_local global i32 0, align 4
@PPMU_LIMITED_PMC_OK = common dso_local global i32 0, align 4
@PPMU_LIMITED_PMC_REQD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @power5p_get_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5p_get_alternatives(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i32 1, i32* %9, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 %12, i64* %14, align 8
  store i32 1, i32* %9, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @power5p_limited_pmc_event(i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @find_alternative(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAX_ALT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i64**, i64*** @event_alternatives, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %26
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 %43, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %38, %26
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @power5p_limited_pmc_event(i64 %50)
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %22

57:                                               ; preds = %22
  br label %71

58:                                               ; preds = %3
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @find_alternative_bdecode(i64 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i64, i64* %11, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  store i64 %64, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %58
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @PPMU_ONLY_COUNT_RUN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %127

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %122, %76
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %78
  %83 = load i64*, i64** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  switch i64 %87, label %121 [
    i64 15, label %88
    i64 6291461, label %96
    i64 1048585, label %102
    i64 5242889, label %110
  ]

88:                                               ; preds = %82
  %89 = load i64*, i64** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  store i64 6291461, i64* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %121

96:                                               ; preds = %82
  %97 = load i64*, i64** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  store i64 15, i64* %101, align 8
  br label %121

102:                                              ; preds = %82
  %103 = load i64*, i64** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  store i64 5242889, i64* %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %121

110:                                              ; preds = %82
  %111 = load i64*, i64** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  store i64 1048585, i64* %115, align 8
  %116 = load i64*, i64** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  store i64 2097161, i64* %120, align 8
  br label %121

121:                                              ; preds = %82, %110, %102, %96, %88
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %78

125:                                              ; preds = %78
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %125, %71
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @PPMU_LIMITED_PMC_OK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %166, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %166

135:                                              ; preds = %132
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %161, %135
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %136
  %141 = load i64*, i64** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @power5p_limited_pmc_event(i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %140
  %149 = load i64*, i64** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  store i64 %153, i64* %157, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %148, %140
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %136

164:                                              ; preds = %136
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %9, align 4
  br label %207

166:                                              ; preds = %132, %127
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @PPMU_LIMITED_PMC_REQD, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %206

171:                                              ; preds = %166
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %206

175:                                              ; preds = %171
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %201, %175
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %204

180:                                              ; preds = %176
  %181 = load i64*, i64** %6, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @power5p_limited_pmc_event(i64 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %180
  %189 = load i64*, i64** %6, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64*, i64** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  store i64 %193, i64* %197, align 8
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %188, %180
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %176

204:                                              ; preds = %176
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %204, %171, %166
  br label %207

207:                                              ; preds = %206, %164
  %208 = load i32, i32* %9, align 4
  ret i32 %208
}

declare dso_local i32 @power5p_limited_pmc_event(i64) #1

declare dso_local i32 @find_alternative(i64) #1

declare dso_local i64 @find_alternative_bdecode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
