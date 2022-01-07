; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_get_constraint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LOWER_SH = common dso_local global i32 0, align 4
@PM_LOWER_MSK = common dso_local global i32 0, align 4
@p4_unitinfo = common dso_local global %struct.TYPE_2__* null, align 8
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @p4_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PM_PMC_SH, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @PM_PMC_MSK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %181

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = shl i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %13, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %14, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %14, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = ashr i32 %42, 1
  %44 = and i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %27, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PM_UNIT_SH, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* @PM_UNIT_MSK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PM_BYTE_SH, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* @PM_BYTE_MSK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %140

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PM_LOWER_SH, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* @PM_LOWER_MSK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_unitinfo, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %181

78:                                               ; preds = %69
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_unitinfo, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %13, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_unitinfo, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %14, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_unitinfo, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %111

103:                                              ; preds = %78
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = shl i64 %105, %107
  %109 = load i64, i64* %14, align 8
  %110 = or i64 %109, %108
  store i64 %110, i64* %14, align 8
  br label %117

111:                                              ; preds = %78
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 -1, i32* %4, align 4
  br label %181

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %103
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_unitinfo, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 4, %124
  %126 = sub nsw i32 28, %125
  %127 = zext i32 %126 to i64
  %128 = shl i64 15, %127
  %129 = load i64, i64* %13, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %13, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 4, %133
  %135 = sub nsw i32 28, %134
  %136 = zext i32 %135 to i64
  %137 = shl i64 %132, %136
  %138 = load i64, i64* %14, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %14, align 8
  br label %140

140:                                              ; preds = %117, %45
  %141 = load i32, i32* %15, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i64, i64* %13, align 8
  %145 = or i64 %144, 549755813888
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = or i64 %146, 68719476736
  store i64 %147, i64* %14, align 8
  br label %153

148:                                              ; preds = %140
  %149 = load i64, i64* %13, align 8
  %150 = or i64 %149, 34359738368
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %14, align 8
  %152 = or i64 %151, 4294967296
  store i64 %152, i64* %14, align 8
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %5, align 4
  %155 = call i64 @p4_marked_instr_event(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i64, i64* %13, align 8
  %159 = or i64 %158, 72057594037927936
  store i64 %159, i64* %13, align 8
  %160 = load i64, i64* %14, align 8
  %161 = or i64 %160, 72057594037927936
  store i64 %161, i64* %14, align 8
  br label %162

162:                                              ; preds = %157, %153
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %168 = and i32 %166, %167
  %169 = icmp eq i32 %168, 6
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i64, i64* %13, align 8
  %175 = or i64 %174, 72057594037927936
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %173, %170, %165, %162
  %177 = load i64, i64* %13, align 8
  %178 = load i64*, i64** %6, align 8
  store i64 %177, i64* %178, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i64*, i64** %7, align 8
  store i64 %179, i64* %180, align 8
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %176, %115, %77, %26
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i64 @p4_marked_instr_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
