; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nvc0_mem_timing_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nvc0_mem_timing_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_tbl_entry = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_pm_memtiming = type { i64, i32*, i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Entry %d: 290: %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"         2a0: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*)* @nvc0_mem_timing_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_mem_timing_calc(%struct.drm_device* %0, i32 %1, %struct.nouveau_pm_tbl_entry* %2, i32 %3, %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming* %5) #0 {
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_pm_tbl_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_pm_memtiming*, align 8
  %12 = alloca %struct.nouveau_pm_memtiming*, align 8
  %13 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nouveau_pm_tbl_entry* %2, %struct.nouveau_pm_tbl_entry** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming** %11, align 8
  store %struct.nouveau_pm_memtiming* %5, %struct.nouveau_pm_memtiming** %12, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %13, align 8
  %16 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %17 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %22 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %25 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %6
  %27 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %28 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 24
  %31 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %32 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = shl i32 %34, 17
  %36 = or i32 %30, %35
  %37 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %38 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 8
  %41 = or i32 %36, %40
  %42 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %47 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %51 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, -16777216
  %56 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %57 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 20
  %61 = or i32 %55, %60
  %62 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  %66 = shl i32 %65, 14
  %67 = or i32 %61, %66
  %68 = zext i32 %67 to i64
  %69 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %70 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 %71, 7
  %73 = or i64 %68, %72
  %74 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %75 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 15
  %78 = sext i32 %77 to i64
  %79 = or i64 %73, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %82 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %86 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, -16776961
  %91 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %92 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %90, %94
  %96 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %97 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 %98, 8
  %100 = or i32 %95, %99
  %101 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %102 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %106 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 31
  %109 = shl i32 %108, 9
  %110 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %111 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 15
  %114 = shl i32 %113, 5
  %115 = or i32 %109, %114
  %116 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %117 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 31
  %120 = or i32 %115, %119
  %121 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %122 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 %120, i32* %124, align 4
  %125 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %11, align 8
  %126 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, -1044481
  %131 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %9, align 8
  %132 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 31
  %135 = shl i32 %134, 15
  %136 = or i32 %130, %135
  %137 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %138 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  store i32 %136, i32* %140, align 4
  %141 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %142 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %143 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %146 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %151 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %156 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %161 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %149, i32 %154, i32 %159, i32 %164)
  %166 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %167 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %168 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  ret i32 0
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
