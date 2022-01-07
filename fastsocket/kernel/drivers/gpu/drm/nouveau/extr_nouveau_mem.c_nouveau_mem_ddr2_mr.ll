; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_ddr2_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_ddr2_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_tbl_entry = type { i32, i32, i32 }
%struct.nouveau_pm_memtiming = type { i32, i32*, i32, i64 }
%struct.nouveau_drm = type { i32 }

@NV_MEM_CL_DDR2_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"(%u) Invalid tCL: %u\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NV_MEM_WR_DDR2_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(%u) Invalid tWR: %u\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"(%u) Invalid odt value, assuming disabled: %x\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"(%u) MR: %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*)* @nouveau_mem_ddr2_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_mem_ddr2_mr(%struct.drm_device* %0, i32 %1, %struct.nouveau_pm_tbl_entry* %2, i32 %3, %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming* %5) #0 {
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
  %17 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %18 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 15
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %23 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %26 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %34

27:                                               ; preds = %6
  %28 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %29 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  %32 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %33 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %36 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NV_MEM_CL_DDR2_MAX, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %42 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %46 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NV_WARN(%struct.nouveau_drm* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* @ERANGE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %138

51:                                               ; preds = %34
  %52 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %53 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NV_MEM_WR_DDR2_MAX, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %59 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %60 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NV_WARN(%struct.nouveau_drm* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* @ERANGE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %138

68:                                               ; preds = %51
  %69 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %75 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %76 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %79 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @NV_WARN(%struct.nouveau_drm* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %83 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %73, %68
  %85 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %86 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 4111
  %91 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %92 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 4
  %95 = or i32 %90, %94
  %96 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %97 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = shl i32 %99, 9
  %101 = or i32 %95, %100
  %102 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %103 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %107 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 1056699
  %112 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %113 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 1
  %116 = shl i32 %115, 2
  %117 = or i32 %111, %116
  %118 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %119 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 2
  %122 = shl i32 %121, 5
  %123 = or i32 %117, %122
  %124 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %125 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %129 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %130 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %133 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @NV_DEBUG(%struct.nouveau_drm* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %136)
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %84, %57, %40
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
