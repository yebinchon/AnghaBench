; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_gddr3_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_gddr3_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_tbl_entry = type { i32, i64, i64 }
%struct.nouveau_pm_memtiming = type { i32, i32, i32*, i32 }
%struct.nouveau_drm = type { i32 }

@NV_MEM_CL_GDDR3_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"(%u) Invalid tCL: %u\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NV_MEM_WR_GDDR3_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"(%u) Invalid tWR: %u\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"(%u) Invalid odt value, assuming autocal: %x\00", align 1
@nv_mem_cl_lut_gddr3 = common dso_local global i32* null, align 8
@nv_mem_wr_lut_gddr3 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"(%u) MR: %08x %08x %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*)* @nouveau_mem_gddr3_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_mem_gddr3_mr(%struct.drm_device* %0, i32 %1, %struct.nouveau_pm_tbl_entry* %2, i32 %3, %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_pm_tbl_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_pm_memtiming*, align 8
  %13 = alloca %struct.nouveau_pm_memtiming*, align 8
  %14 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.nouveau_pm_tbl_entry* %2, %struct.nouveau_pm_tbl_entry** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming** %12, align 8
  store %struct.nouveau_pm_memtiming* %5, %struct.nouveau_pm_memtiming** %13, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %14, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 15
  br i1 %18, label %19, label %30

19:                                               ; preds = %6
  %20 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %21 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %24 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %26 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %29 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %44

30:                                               ; preds = %6
  %31 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %32 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 48
  %35 = ashr i32 %34, 4
  %36 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %37 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %39 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 7
  %42 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %19
  %45 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %46 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NV_MEM_CL_GDDR3_MAX, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %52 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %53 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %56 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @NV_WARN(%struct.nouveau_drm* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57)
  %59 = load i32, i32* @ERANGE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %181

61:                                               ; preds = %44
  %62 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NV_MEM_WR_GDDR3_MAX, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %69 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %73 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @NV_WARN(%struct.nouveau_drm* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %71, i64 %74)
  %76 = load i32, i32* @ERANGE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %181

78:                                               ; preds = %61
  %79 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %80 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %85 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %86 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %89 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 @NV_WARN(%struct.nouveau_drm* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %91)
  %93 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %94 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %83, %78
  %96 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %97 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 3595
  %102 = load i32*, i32** @nv_mem_cl_lut_gddr3, align 8
  %103 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %104 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 7
  %109 = shl i32 %108, 4
  %110 = or i32 %101, %109
  %111 = load i32*, i32** @nv_mem_cl_lut_gddr3, align 8
  %112 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %113 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 8
  %118 = ashr i32 %117, 2
  %119 = or i32 %110, %118
  %120 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %121 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %125 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 1052480
  %130 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %131 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %129, %132
  %134 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %135 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 2
  %138 = or i32 %133, %137
  %139 = load i32*, i32** @nv_mem_wr_lut_gddr3, align 8
  %140 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %141 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 15
  %146 = shl i32 %145, 4
  %147 = or i32 %138, %146
  %148 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %149 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %147, i32* %151, align 4
  %152 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %153 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %158 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %156, i32* %160, align 4
  %161 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %162 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %163 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %166 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %171 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %176 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @NV_DEBUG(%struct.nouveau_drm* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %169, i32 %174, i32 %179)
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %95, %67, %50
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i32, i64) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
