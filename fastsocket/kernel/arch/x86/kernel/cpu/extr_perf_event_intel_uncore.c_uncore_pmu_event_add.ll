; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i64 }
%struct.intel_uncore_box = type { i32, i64*, %struct.perf_event** }

@UNCORE_PMC_IDX_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_HES_ARCH = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @uncore_pmu_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_pmu_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uncore_box*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %14)
  store %struct.intel_uncore_box* %15, %struct.intel_uncore_box** %6, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %7, align 8
  %18 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %23 = icmp ne %struct.intel_uncore_box* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %192

27:                                               ; preds = %2
  %28 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = call i32 @uncore_collect_events(%struct.intel_uncore_box* %28, %struct.perf_event* %29, i32 0)
  store i32 %30, i32* %11, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %192

35:                                               ; preds = %27
  %36 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %37 = load i32, i32* @PERF_HES_STOPPED, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PERF_EF_START, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @PERF_HES_ARCH, align 4
  %47 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %35
  %52 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @uncore_assign_events(%struct.intel_uncore_box* %52, i32* %21, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %192

59:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %117, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %63 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %120

66:                                               ; preds = %60
  %67 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %68 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %67, i32 0, i32 2
  %69 = load %struct.perf_event**, %struct.perf_event*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %69, i64 %71
  %73 = load %struct.perf_event*, %struct.perf_event** %72, align 8
  store %struct.perf_event* %73, %struct.perf_event** %4, align 8
  %74 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %75 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %74, i32 0, i32 0
  store %struct.hw_perf_event* %75, %struct.hw_perf_event** %7, align 8
  %76 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %77 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %21, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %78, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %66
  %85 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %86 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %89 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %21, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %90, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %87, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %117

100:                                              ; preds = %84, %66
  %101 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %102 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PERF_HES_STOPPED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @PERF_HES_ARCH, align 4
  %109 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %110 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %115 = load i32, i32* @PERF_EF_UPDATE, align 4
  %116 = call i32 @uncore_pmu_event_stop(%struct.perf_event* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %99
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %60

120:                                              ; preds = %60
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %185, %120
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %188

125:                                              ; preds = %121
  %126 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %127 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %126, i32 0, i32 2
  %128 = load %struct.perf_event**, %struct.perf_event*** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %128, i64 %130
  %132 = load %struct.perf_event*, %struct.perf_event** %131, align 8
  store %struct.perf_event* %132, %struct.perf_event** %4, align 8
  %133 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %134 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %133, i32 0, i32 0
  store %struct.hw_perf_event* %134, %struct.hw_perf_event** %7, align 8
  %135 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %136 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %21, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %137, %141
  br i1 %142, label %158, label %143

143:                                              ; preds = %125
  %144 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %145 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %148 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %21, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %149, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %146, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %143, %125
  %159 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %160 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %21, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @uncore_assign_hw_event(%struct.intel_uncore_box* %159, %struct.perf_event* %160, i32 %164)
  br label %174

166:                                              ; preds = %143
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %169 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %185

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %158
  %175 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %176 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @PERF_HES_ARCH, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %185

182:                                              ; preds = %174
  %183 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %184 = call i32 @uncore_pmu_event_start(%struct.perf_event* %183, i32 0)
  br label %185

185:                                              ; preds = %182, %181, %172
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %121

188:                                              ; preds = %121
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %6, align 8
  %191 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %192

192:                                              ; preds = %188, %57, %33, %24
  %193 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @uncore_collect_events(%struct.intel_uncore_box*, %struct.perf_event*, i32) #1

declare dso_local i32 @uncore_assign_events(%struct.intel_uncore_box*, i32*, i32) #1

declare dso_local i32 @uncore_pmu_event_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @uncore_assign_hw_event(%struct.intel_uncore_box*, %struct.perf_event*, i32) #1

declare dso_local i32 @uncore_pmu_event_start(%struct.perf_event*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
