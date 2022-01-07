; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_cfm.c_cem_priv_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_cfm.c_cem_priv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@SMT_DAS = common dso_local global i64 0, align 8
@CF_JOIN = common dso_local global i32 0, align 4
@PA = common dso_local global i32 0, align 4
@PB = common dso_local global i32 0, align 4
@CEM_PST_UP = common dso_local global i64 0, align 8
@CEM_PST_DOWN = common dso_local global i64 0, align 8
@CEM_PST_HOLD = common dso_local global i64 0, align 8
@EVENT_PCM = common dso_local global i64 0, align 8
@PC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32)* @cem_priv_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cem_priv_state(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %8 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SMT_DAS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %180

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CF_JOIN, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PA, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PB, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %180

26:                                               ; preds = %21, %14
  %27 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load i64, i64* @CEM_PST_UP, align 8
  %38 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %39 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %37, i64* %44, align 8
  br label %65

45:                                               ; preds = %26
  %46 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %47 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %45
  %56 = load i64, i64* @CEM_PST_DOWN, align 8
  %57 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %58 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 %56, i64* %63, align 8
  br label %64

64:                                               ; preds = %55, %45
  br label %65

65:                                               ; preds = %64, %36
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %176, %65
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %179

69:                                               ; preds = %66
  %70 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %71 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CEM_PST_HOLD, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %69
  %81 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %82 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %80
  %91 = load i64, i64* @CEM_PST_DOWN, align 8
  %92 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %93 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 %91, i64* %98, align 8
  %99 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %100 = load i64, i64* @EVENT_PCM, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @PC_START, align 4
  %106 = call i32 @queue_event(%struct.s_smc* %99, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %90, %80, %69
  %108 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %109 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CEM_PST_UP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %107
  %119 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %120 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %118
  %129 = load i64, i64* @CEM_PST_HOLD, align 8
  %130 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %131 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i64 %129, i64* %136, align 8
  %137 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %138 = load i64, i64* @EVENT_PCM, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* @PC_START, align 4
  %144 = call i32 @queue_event(%struct.s_smc* %137, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %128, %118, %107
  %146 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %147 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CEM_PST_DOWN, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %145
  %157 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %158 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %156
  %167 = load i64, i64* @CEM_PST_HOLD, align 8
  %168 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %169 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i64 %167, i64* %174, align 8
  br label %175

175:                                              ; preds = %166, %156, %145
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %66

179:                                              ; preds = %66
  br label %180

180:                                              ; preds = %179, %25, %13
  ret void
}

declare dso_local i32 @queue_event(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
