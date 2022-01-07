; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_timing_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_timing_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_memtiming = type { i32*, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_pm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nouveau_pm_memtiming }
%struct.nouveau_pm_tbl_entry = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_mem_timing_calc(%struct.drm_device* %0, i32 %1, %struct.nouveau_pm_memtiming* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_pm_memtiming*, align 8
  %8 = alloca %struct.nouveau_device*, align 8
  %9 = alloca %struct.nouveau_fb*, align 8
  %10 = alloca %struct.nouveau_pm*, align 8
  %11 = alloca %struct.nouveau_pm_memtiming*, align 8
  %12 = alloca %struct.nouveau_pm_tbl_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_pm_memtiming* %2, %struct.nouveau_pm_memtiming** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %19)
  store %struct.nouveau_device* %20, %struct.nouveau_device** %8, align 8
  %21 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %22 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device* %21)
  store %struct.nouveau_fb* %22, %struct.nouveau_fb** %9, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call %struct.nouveau_pm* @nouveau_pm(%struct.drm_device* %23)
  store %struct.nouveau_pm* %24, %struct.nouveau_pm** %10, align 8
  %25 = load %struct.nouveau_pm*, %struct.nouveau_pm** %10, align 8
  %26 = getelementptr inbounds %struct.nouveau_pm, %struct.nouveau_pm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.nouveau_pm_memtiming* %27, %struct.nouveau_pm_memtiming** %11, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32* @nouveau_perf_timing(%struct.drm_device* %28, i32 %29, i32* %13, i32* %14)
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32*, i32** %15, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33, %3
  %39 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %40 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %41 = bitcast %struct.nouveau_pm_memtiming* %39 to i8*
  %42 = bitcast %struct.nouveau_pm_memtiming* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %191

43:                                               ; preds = %33
  %44 = load i32*, i32** %15, align 8
  %45 = bitcast i32* %44 to %struct.nouveau_pm_tbl_entry*
  store %struct.nouveau_pm_tbl_entry* %45, %struct.nouveau_pm_tbl_entry** %12, align 8
  %46 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %47 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %50 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %52 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %78 [
    i32 135, label %54
    i32 134, label %62
    i32 133, label %70
    i32 132, label %70
  ]

54:                                               ; preds = %43
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %12, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %60 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %61 = call i32 @nv40_mem_timing_calc(%struct.drm_device* %55, i32 %56, %struct.nouveau_pm_tbl_entry* %57, i32 %58, %struct.nouveau_pm_memtiming* %59, %struct.nouveau_pm_memtiming* %60)
  store i32 %61, i32* %17, align 4
  br label %81

62:                                               ; preds = %43
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %68 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %69 = call i32 @nv50_mem_timing_calc(%struct.drm_device* %63, i32 %64, %struct.nouveau_pm_tbl_entry* %65, i32 %66, %struct.nouveau_pm_memtiming* %67, %struct.nouveau_pm_memtiming* %68)
  store i32 %69, i32* %17, align 4
  br label %81

70:                                               ; preds = %43, %43
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %76 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %77 = call i32 @nvc0_mem_timing_calc(%struct.drm_device* %71, i32 %72, %struct.nouveau_pm_tbl_entry* %73, i32 %74, %struct.nouveau_pm_memtiming* %75, %struct.nouveau_pm_memtiming* %76)
  store i32 %77, i32* %17, align 4
  br label %81

78:                                               ; preds = %43
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %78, %70, %62, %54
  %82 = load %struct.nouveau_fb*, %struct.nouveau_fb** %9, align 8
  %83 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = mul nsw i32 %85, %89
  switch i32 %90, label %123 [
    i32 129, label %91
    i32 128, label %99
    i32 131, label %107
    i32 130, label %115
  ]

91:                                               ; preds = %81
  %92 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %97 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %98 = call i32 @nouveau_mem_gddr3_mr(%struct.drm_device* %92, i32 %93, %struct.nouveau_pm_tbl_entry* %94, i32 %95, %struct.nouveau_pm_memtiming* %96, %struct.nouveau_pm_memtiming* %97)
  store i32 %98, i32* %17, align 4
  br label %126

99:                                               ; preds = %81
  %100 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %12, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %105 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %106 = call i32 @nouveau_mem_gddr5_mr(%struct.drm_device* %100, i32 %101, %struct.nouveau_pm_tbl_entry* %102, i32 %103, %struct.nouveau_pm_memtiming* %104, %struct.nouveau_pm_memtiming* %105)
  store i32 %106, i32* %17, align 4
  br label %126

107:                                              ; preds = %81
  %108 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %12, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %113 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %114 = call i32 @nouveau_mem_ddr2_mr(%struct.drm_device* %108, i32 %109, %struct.nouveau_pm_tbl_entry* %110, i32 %111, %struct.nouveau_pm_memtiming* %112, %struct.nouveau_pm_memtiming* %113)
  store i32 %114, i32* %17, align 4
  br label %126

115:                                              ; preds = %81
  %116 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %121 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %122 = call i32 @nouveau_mem_ddr3_mr(%struct.drm_device* %116, i32 %117, %struct.nouveau_pm_tbl_entry* %118, i32 %119, %struct.nouveau_pm_memtiming* %120, %struct.nouveau_pm_memtiming* %121)
  store i32 %122, i32* %17, align 4
  br label %126

123:                                              ; preds = %81
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %123, %115, %107, %99, %91
  %127 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32* @nouveau_perf_ramcfg(%struct.drm_device* %127, i32 %128, i32* %13, i32* %14)
  store i32* %129, i32** %16, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %189

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32*, i32** %16, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %18, align 4
  br label %153

144:                                              ; preds = %132
  %145 = load i32*, i32** %16, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 64
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %144, %135
  %154 = load %struct.nouveau_fb*, %struct.nouveau_fb** %9, align 8
  %155 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %173 [
    i32 129, label %158
  ]

158:                                              ; preds = %153
  %159 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %160 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, -65
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %18, align 4
  %166 = mul nsw i32 64, %165
  %167 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %168 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %188

173:                                              ; preds = %153
  %174 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %175 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, -2
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* %18, align 4
  %181 = mul nsw i32 1, %180
  %182 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %7, align 8
  %183 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %181
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %173, %158
  br label %189

189:                                              ; preds = %188, %126
  %190 = load i32, i32* %17, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %189, %38
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device*) #1

declare dso_local %struct.nouveau_pm* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32* @nouveau_perf_timing(%struct.drm_device*, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nv40_mem_timing_calc(%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*) #1

declare dso_local i32 @nv50_mem_timing_calc(%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*) #1

declare dso_local i32 @nvc0_mem_timing_calc(%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*) #1

declare dso_local i32 @nouveau_mem_gddr3_mr(%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*) #1

declare dso_local i32 @nouveau_mem_gddr5_mr(%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*) #1

declare dso_local i32 @nouveau_mem_ddr2_mr(%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*) #1

declare dso_local i32 @nouveau_mem_ddr3_mr(%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*) #1

declare dso_local i32* @nouveau_perf_ramcfg(%struct.drm_device*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
