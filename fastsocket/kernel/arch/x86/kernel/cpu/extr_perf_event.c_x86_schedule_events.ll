; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_schedule_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_schedule_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cpu_hw_events*, %struct.TYPE_5__*)*, %struct.event_constraint* (%struct.cpu_hw_events*, %struct.TYPE_5__*)* }
%struct.cpu_hw_events = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.event_constraint = type { i64*, i32 }

@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_schedule_events(%struct.cpu_hw_events* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.event_constraint*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hw_perf_event*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %16 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.event_constraint*, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %21 = call i32 @BITS_TO_LONGS(i32 %20)
  %22 = zext i32 %21 to i64
  %23 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %25 = call i32 @bitmap_zero(i64* %23, i32 %24)
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %56, %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load %struct.event_constraint* (%struct.cpu_hw_events*, %struct.TYPE_5__*)*, %struct.event_constraint* (%struct.cpu_hw_events*, %struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1), align 8
  %33 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call %struct.event_constraint* %32(%struct.cpu_hw_events* %33, %struct.TYPE_5__* %40)
  store %struct.event_constraint* %41, %struct.event_constraint** %7, align 8
  %42 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %19, i64 %44
  store %struct.event_constraint* %42, %struct.event_constraint** %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %48 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @min(i32 %46, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %53 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @max(i32 %51, i32 %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %31
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %27

59:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %115, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %118

64:                                               ; preds = %60
  %65 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %66 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store %struct.hw_perf_event* %72, %struct.hw_perf_event** %15, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %19, i64 %74
  %76 = load %struct.event_constraint*, %struct.event_constraint** %75, align 8
  store %struct.event_constraint* %76, %struct.event_constraint** %7, align 8
  %77 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %78 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %64
  br label %118

82:                                               ; preds = %64
  %83 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %84 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %87 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = call i64 @test_bit(i32 %85, i64* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %118

92:                                               ; preds = %82
  %93 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %94 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @test_bit(i32 %95, i64* %23)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %118

99:                                               ; preds = %92
  %100 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %101 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @__set_bit(i32 %102, i64* %23)
  %104 = load i32*, i32** %6, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.hw_perf_event*, %struct.hw_perf_event** %15, align 8
  %108 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %99
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %60

118:                                              ; preds = %98, %91, %81, %60
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @perf_assign_events(%struct.event_constraint** %19, i32 %123, i32 %124, i32 %125, i32* %126)
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %122, %118
  %129 = load i32*, i32** %6, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %131, %128
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %154, %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = load i32 (%struct.cpu_hw_events*, %struct.TYPE_5__*)*, i32 (%struct.cpu_hw_events*, %struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %141 = icmp ne i32 (%struct.cpu_hw_events*, %struct.TYPE_5__*)* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i32 (%struct.cpu_hw_events*, %struct.TYPE_5__*)*, i32 (%struct.cpu_hw_events*, %struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %144 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %145 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %146 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %147, i64 %149
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = call i32 %143(%struct.cpu_hw_events* %144, %struct.TYPE_5__* %151)
  br label %153

153:                                              ; preds = %142, %139
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %135

157:                                              ; preds = %135
  br label %158

158:                                              ; preds = %157, %131
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* @ENOSPC, align 4
  %163 = sub nsw i32 0, %162
  br label %165

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 0, %164 ]
  %167 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %167)
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BITS_TO_LONGS(i32) #2

declare dso_local i32 @bitmap_zero(i64*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i64 @test_bit(i32, i64*) #2

declare dso_local i32 @__set_bit(i32, i64*) #2

declare dso_local i32 @perf_assign_events(%struct.event_constraint**, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
