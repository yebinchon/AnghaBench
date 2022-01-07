; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_gddr5_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_gddr5_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_tbl_entry = type { i32, i32, i32 }
%struct.nouveau_pm_memtiming = type { i32, i32, i32*, i32 }
%struct.nouveau_drm = type { i32 }

@NV_MEM_CL_GDDR5_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"(%u) Invalid tCL: %u\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NV_MEM_WR_GDDR5_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(%u) Invalid tWR: %u\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"(%u) Invalid odt value, assuming autocal: %x\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"(%u) MR: %08x %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*)* @nouveau_mem_gddr5_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_mem_gddr5_mr(%struct.drm_device* %0, i32 %1, %struct.nouveau_pm_tbl_entry* %2, i32 %3, %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming* %5) #0 {
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
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 48
  %35 = ashr i32 %34, 4
  %36 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %37 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %39 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 3
  %42 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %19
  %45 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %46 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NV_MEM_CL_GDDR5_MAX, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %52 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %53 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %56 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NV_WARN(%struct.nouveau_drm* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* @ERANGE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %151

61:                                               ; preds = %44
  %62 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NV_MEM_WR_GDDR5_MAX, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %69 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %73 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NV_WARN(%struct.nouveau_drm* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load i32, i32* @ERANGE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %151

78:                                               ; preds = %61
  %79 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %80 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %85 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %86 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %89 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @NV_WARN(%struct.nouveau_drm* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90)
  %92 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %93 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %83, %78
  %95 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %96 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 7
  %101 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %102 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 5
  %105 = shl i32 %104, 3
  %106 = or i32 %100, %105
  %107 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %108 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 4
  %111 = shl i32 %110, 8
  %112 = or i32 %106, %111
  %113 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %114 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %118 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 1050608
  %123 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %124 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %122, %125
  %127 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %128 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 2
  %131 = or i32 %126, %130
  %132 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %133 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %131, i32* %135, align 4
  %136 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %137 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %138 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %141 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %146 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @NV_DEBUG(%struct.nouveau_drm* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %144, i32 %149)
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %94, %67, %50
  %152 = load i32, i32* %7, align 4
  ret i32 %152
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
