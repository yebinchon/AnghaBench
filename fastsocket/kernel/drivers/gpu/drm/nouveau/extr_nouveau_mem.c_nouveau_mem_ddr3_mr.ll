; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_ddr3_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_ddr3_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_tbl_entry = type { i32, i32, i32, i32 }
%struct.nouveau_pm_memtiming = type { i32, i32*, i32, i64 }
%struct.nouveau_drm = type { i32 }

@NV_MEM_CL_DDR3_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"(%u) Invalid tCL: %u\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NV_MEM_WR_DDR3_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(%u) Invalid tWR: %u\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"(%u) Invalid tCWL: %u\00", align 1
@nv_mem_wr_lut_ddr3 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"(%u) MR: %08x %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*)* @nouveau_mem_ddr3_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_mem_ddr3_mr(%struct.drm_device* %0, i32 %1, %struct.nouveau_pm_tbl_entry* %2, i32 %3, %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_pm_tbl_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_pm_memtiming*, align 8
  %13 = alloca %struct.nouveau_pm_memtiming*, align 8
  %14 = alloca %struct.nouveau_drm*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.nouveau_pm_tbl_entry* %2, %struct.nouveau_pm_tbl_entry** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming** %12, align 8
  store %struct.nouveau_pm_memtiming* %5, %struct.nouveau_pm_memtiming** %13, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %14, align 8
  %18 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %19 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %23 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 15
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %28 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %31 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %39

32:                                               ; preds = %6
  %33 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %34 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 7
  %37 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %38 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %41 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NV_MEM_CL_DDR3_MAX, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %47 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %39
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %52 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %53 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %56 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NV_WARN(%struct.nouveau_drm* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* @ERANGE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %186

61:                                               ; preds = %45
  %62 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NV_MEM_WR_DDR3_MAX, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %69 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %83

72:                                               ; preds = %67, %61
  %73 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %74 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %75 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %78 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @NV_WARN(%struct.nouveau_drm* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load i32, i32* @ERANGE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %186

83:                                               ; preds = %67
  %84 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %85 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 5
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %90 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %91 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %94 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @NV_WARN(%struct.nouveau_drm* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load i32, i32* @ERANGE, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %186

99:                                               ; preds = %83
  %100 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %101 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 6155
  %106 = load i32, i32* %15, align 4
  %107 = and i32 %106, 7
  %108 = shl i32 %107, 4
  %109 = or i32 %105, %108
  %110 = load i32, i32* %15, align 4
  %111 = and i32 %110, 8
  %112 = ashr i32 %111, 1
  %113 = or i32 %109, %112
  %114 = load i32*, i32** @nv_mem_wr_lut_ddr3, align 8
  %115 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %116 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 9
  %122 = or i32 %113, %121
  %123 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %124 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %122, i32* %126, align 4
  %127 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %128 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 1056187
  %133 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %134 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 1
  %137 = shl i32 %136, 2
  %138 = or i32 %132, %137
  %139 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %140 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 2
  %143 = shl i32 %142, 5
  %144 = or i32 %138, %143
  %145 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %146 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, 4
  %149 = shl i32 %148, 7
  %150 = or i32 %144, %149
  %151 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %152 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %150, i32* %154, align 4
  %155 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %156 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 2162615
  %161 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %162 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 5
  %165 = shl i32 %164, 3
  %166 = or i32 %160, %165
  %167 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %168 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  store i32 %166, i32* %170, align 4
  %171 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %172 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %173 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %176 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %181 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @NV_DEBUG(%struct.nouveau_drm* %171, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %179, i32 %184)
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %99, %88, %72, %50
  %187 = load i32, i32* %7, align 4
  ret i32 %187
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
