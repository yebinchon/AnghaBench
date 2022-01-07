; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_timing_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_timing_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nva3_pm_state*, i32 }
%struct.nva3_pm_state = type { i32*, %struct.nouveau_pm_level* }
%struct.nouveau_pm_level = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*)* @mclk_timing_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_timing_set(%struct.nouveau_mem_exec_func* %0) #0 {
  %2 = alloca %struct.nouveau_mem_exec_func*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nva3_pm_state*, align 8
  %5 = alloca %struct.nouveau_pm_level*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %2, align 8
  %11 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nouveau_device* @nouveau_dev(i32 %13)
  store %struct.nouveau_device* %14, %struct.nouveau_device** %3, align 8
  %15 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %15, i32 0, i32 0
  %17 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %16, align 8
  store %struct.nva3_pm_state* %17, %struct.nva3_pm_state** %4, align 8
  %18 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %19 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %18, i32 0, i32 1
  %20 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %19, align 8
  store %struct.nouveau_pm_level* %20, %struct.nouveau_pm_level** %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 9
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 1049120, %27
  %29 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nv_wr32(%struct.nouveau_device* %25, i32 %28, i32 %36)
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %43 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %48 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 8
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 4096
  store i32 %55, i32* %7, align 4
  %56 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @nv_mask(%struct.nouveau_device* %56, i32 1049088, i32 4096, i32 %57)
  br label %59

59:                                               ; preds = %46, %41
  %60 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %61 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %138

64:                                               ; preds = %59
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %66 = call i32 @nv_rd32(%struct.nouveau_device* %65, i32 1050388)
  %67 = and i32 %66, 268435439
  store i32 %67, i32* %8, align 4
  %68 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %69 = call i32 @nv_rd32(%struct.nouveau_device* %68, i32 1050392)
  %70 = and i32 %69, -257
  store i32 %70, i32* %9, align 4
  %71 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %72 = call i32 @nv_rd32(%struct.nouveau_device* %71, i32 1050396)
  %73 = and i32 %72, -257
  store i32 %73, i32* %10, align 4
  %74 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %75 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, -268435456
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %81, %64
  %85 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %86 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, 16
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %84
  %96 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @nv_wr32(%struct.nouveau_device* %96, i32 1050388, i32 %97)
  %99 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %100 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, 256
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %106, %95
  %110 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @nv_wr32(%struct.nouveau_device* %110, i32 1050396, i32 %111)
  %113 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %114 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, 256
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %120, %109
  %124 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @nv_wr32(%struct.nouveau_device* %124, i32 1050392, i32 %125)
  %127 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %128 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 16
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %136 = call i32 @nv_wr32(%struct.nouveau_device* %135, i32 1118464, i32 1207959552)
  br label %137

137:                                              ; preds = %134, %123
  br label %138

138:                                              ; preds = %137, %59
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
