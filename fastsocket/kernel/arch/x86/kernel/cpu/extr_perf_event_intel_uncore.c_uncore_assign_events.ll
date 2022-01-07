; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_assign_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_assign_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.event_constraint = type { i64*, i32 }

@UNCORE_PMC_IDX_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, i32*, i32)* @uncore_assign_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_assign_events(%struct.intel_uncore_box* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.event_constraint*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hw_perf_event*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %17 = call i32 @BITS_TO_LONGS(i32 %16)
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca %struct.event_constraint*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %25 = call i32 @bitmap_zero(i64* %20, i32 %24)
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %55, %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %33 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %34 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call %struct.event_constraint* @uncore_get_event_constraint(%struct.intel_uncore_box* %32, %struct.TYPE_3__* %39)
  store %struct.event_constraint* %40, %struct.event_constraint** %9, align 8
  %41 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %23, i64 %43
  store %struct.event_constraint* %41, %struct.event_constraint** %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %47 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @min(i32 %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %52 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @max(i32 %50, i32 %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %31
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %27

58:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %114, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %117

63:                                               ; preds = %59
  %64 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %65 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %66, i64 %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store %struct.hw_perf_event* %71, %struct.hw_perf_event** %15, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %23, i64 %73
  %75 = load %struct.event_constraint*, %struct.event_constraint** %74, align 8
  store %struct.event_constraint* %75, %struct.event_constraint** %9, align 8
  %76 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %77 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %117

81:                                               ; preds = %63
  %82 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %83 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %86 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = call i64 @test_bit(i32 %84, i64* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %117

91:                                               ; preds = %81
  %92 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @test_bit(i32 %94, i64* %20)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %117

98:                                               ; preds = %91
  %99 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %100 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__set_bit(i32 %101, i64* %20)
  %103 = load i32*, i32** %5, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %107 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %98
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %59

117:                                              ; preds = %97, %90, %80, %59
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @perf_assign_events(%struct.event_constraint** %23, i32 %122, i32 %123, i32 %124, i32* %125)
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %121, %117
  %128 = load i32*, i32** %5, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %130, %127
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %148, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %140 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %141 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %142, i64 %144
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = call i32 @uncore_put_event_constraint(%struct.intel_uncore_box* %139, %struct.TYPE_3__* %146)
  br label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %134

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151, %130
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  br label %159

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %155
  %160 = phi i32 [ %157, %155 ], [ 0, %158 ]
  %161 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %161)
  ret i32 %160
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local %struct.event_constraint* @uncore_get_event_constraint(%struct.intel_uncore_box*, %struct.TYPE_3__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @perf_assign_events(%struct.event_constraint**, i32, i32, i32, i32*) #1

declare dso_local i32 @uncore_put_event_constraint(%struct.intel_uncore_box*, %struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
