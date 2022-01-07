; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nv50_mem_timing_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nv50_mem_timing_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_tbl_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_pm_memtiming = type { i32, i32*, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_drm = type { i32 }
%struct.bit_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Entry %d: 220: %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"         230: %08x %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"         240: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.nouveau_pm_tbl_entry*, i32, %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming*)* @nv50_mem_timing_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_mem_timing_calc(%struct.drm_device* %0, i32 %1, %struct.nouveau_pm_tbl_entry* %2, i32 %3, %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_pm_tbl_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_pm_memtiming*, align 8
  %13 = alloca %struct.nouveau_pm_memtiming*, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.nouveau_fb*, align 8
  %16 = alloca %struct.nouveau_drm*, align 8
  %17 = alloca %struct.bit_entry, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.nouveau_pm_tbl_entry* %2, %struct.nouveau_pm_tbl_entry** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.nouveau_pm_memtiming* %4, %struct.nouveau_pm_memtiming** %12, align 8
  store %struct.nouveau_pm_memtiming* %5, %struct.nouveau_pm_memtiming** %13, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %22)
  store %struct.nouveau_device* %23, %struct.nouveau_device** %14, align 8
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %25 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device* %24)
  store %struct.nouveau_fb* %25, %struct.nouveau_fb** %15, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %27 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %26)
  store %struct.nouveau_drm* %27, %struct.nouveau_drm** %16, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %29 = call i64 @bit_table(%struct.drm_device* %28, i8 signext 80, %struct.bit_entry* %17)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %505

34:                                               ; preds = %6
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @min(i32 %35, i32 22)
  switch i32 %36, label %61 [
    i32 22, label %37
    i32 21, label %41
    i32 20, label %45
    i32 19, label %57
  ]

37:                                               ; preds = %34
  %38 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %39 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %34, %37
  %42 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %19, align 4
  br label %45

45:                                               ; preds = %34, %41
  %46 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %47 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %52 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %55 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %34, %56
  %58 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %59 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %34, %57
  %62 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %63 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 24
  %66 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %67 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %65, %69
  %71 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %72 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %70, %74
  %76 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %77 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %81 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %85 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 2
  %88 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %89 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = add nsw i32 %87, %91
  %93 = shl i32 %92, 24
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @max(i32 %94, i32 1)
  %96 = shl i32 %95, 16
  %97 = or i32 %93, %96
  %98 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %99 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 2
  %102 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %103 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = add nsw i32 %101, %105
  %107 = shl i32 %106, 8
  %108 = or i32 %97, %107
  %109 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %110 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %108, i32* %112, align 4
  %113 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %114 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = shl i32 %116, 24
  %118 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %119 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 16
  %122 = or i32 %117, %121
  %123 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %124 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 8
  %127 = or i32 %122, %126
  %128 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %129 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %133 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %131, i32* %135, align 4
  %136 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %137 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 8
  %140 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %141 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %140, i32 0, i32 13
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %139, %142
  %144 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %145 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  store i32 %143, i32* %147, align 4
  %148 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %149 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 24
  %152 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %153 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %156 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @max(i32 %154, i32 %157)
  %159 = shl i32 %158, 16
  %160 = or i32 %151, %159
  %161 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %162 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %160, %163
  %165 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %166 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 5
  store i32 %164, i32* %168, align 4
  %169 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %170 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 8
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, -256
  %175 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %176 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 8
  store i32 %174, i32* %178, align 4
  %179 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %17, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %336

182:                                              ; preds = %61
  %183 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %184 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %183, i32 0, i32 14
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 2
  %187 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %188 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = sub nsw i32 %186, %190
  %192 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %193 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %191
  store i32 %197, i32* %195, align 4
  %198 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %199 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %198, i32 0, i32 14
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 20, %200
  %202 = shl i32 %201, 24
  %203 = or i32 %202, 1441792
  %204 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %205 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %204, i32 0, i32 14
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = shl i32 %207, 8
  %209 = or i32 %203, %208
  %210 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %211 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %210, i32 0, i32 14
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, 1
  %214 = or i32 %209, %213
  %215 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %216 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  store i32 %214, i32* %218, align 4
  %219 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %220 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, -65536
  %225 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %226 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 4
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %232 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 51, %233
  %235 = shl i32 %234, 16
  %236 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %237 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = shl i32 %238, 8
  %240 = or i32 %235, %239
  %241 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %242 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %241, i32 0, i32 14
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 46, %243
  %245 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %246 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %244, %247
  %249 = or i32 %240, %248
  %250 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %251 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 6
  store i32 %249, i32* %253, align 4
  %254 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %255 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %254, i32 0, i32 14
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %256, 1
  %258 = shl i32 %257, 16
  %259 = or i32 67109378, %258
  %260 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %261 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 7
  store i32 %259, i32* %263, align 4
  %264 = load %struct.nouveau_fb*, %struct.nouveau_fb** %15, align 8
  %265 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @NV_MEM_TYPE_DDR2, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %303

270:                                              ; preds = %182
  %271 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %272 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %271, i32 0, i32 14
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 3
  %275 = shl i32 %274, 8
  %276 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %277 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 5
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %275
  store i32 %281, i32* %279, align 4
  %282 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %283 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sub nsw i32 %284, 2
  %286 = shl i32 %285, 8
  %287 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %288 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 6
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %286
  store i32 %292, i32* %290, align 4
  %293 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %294 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %293, i32 0, i32 14
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, 4
  %297 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %298 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 8
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %296
  store i32 %302, i32* %300, align 4
  br label %335

303:                                              ; preds = %182
  %304 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %305 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %304, i32 0, i32 14
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 2
  %308 = shl i32 %307, 8
  %309 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %310 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 5
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %308
  store i32 %314, i32* %312, align 4
  %315 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %316 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = shl i32 %317, 8
  %319 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %320 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 6
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %318
  store i32 %324, i32* %322, align 4
  %325 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %326 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %325, i32 0, i32 14
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 %327, 2
  %329 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %330 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 8
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %328
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %303, %270
  br label %450

336:                                              ; preds = %61
  %337 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %338 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %337, i32 0, i32 14
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 5, %339
  %341 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %342 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sub nsw i32 %340, %343
  %345 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %346 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %344
  store i32 %350, i32* %348, align 4
  %351 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %352 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %351, i32 0, i32 14
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 48, %353
  %355 = shl i32 %354, 24
  %356 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %357 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 3
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, 16711680
  %362 = or i32 %355, %361
  %363 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %364 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %363, i32 0, i32 14
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 11, %365
  %367 = shl i32 %366, 8
  %368 = or i32 %362, %367
  %369 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %370 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %369, i32 0, i32 14
  %371 = load i32, i32* %370, align 4
  %372 = sub nsw i32 %371, 1
  %373 = or i32 %368, %372
  %374 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %375 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 3
  store i32 %373, i32* %377, align 4
  %378 = load i32, i32* %19, align 4
  %379 = shl i32 %378, 24
  %380 = load i32, i32* %20, align 4
  %381 = shl i32 %380, 16
  %382 = or i32 %379, %381
  %383 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %384 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 4
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %382
  store i32 %388, i32* %386, align 4
  %389 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %390 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = add nsw i32 %391, 6
  %393 = shl i32 %392, 8
  %394 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %395 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %394, i32 0, i32 1
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 5
  %398 = load i32, i32* %397, align 4
  %399 = or i32 %398, %393
  store i32 %399, i32* %397, align 4
  %400 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %401 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %400, i32 0, i32 14
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 90, %402
  %404 = shl i32 %403, 16
  %405 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %406 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %405, i32 0, i32 14
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 6, %407
  %409 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %410 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %408, %411
  %413 = shl i32 %412, 8
  %414 = or i32 %404, %413
  %415 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %416 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %415, i32 0, i32 14
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 80, %417
  %419 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %420 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = sub nsw i32 %418, %421
  %423 = or i32 %414, %422
  %424 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %425 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 6
  store i32 %423, i32* %427, align 4
  %428 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %12, align 8
  %429 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 7
  %432 = load i32, i32* %431, align 4
  %433 = and i32 %432, -16777216
  %434 = lshr i32 %433, 24
  store i32 %434, i32* %21, align 4
  %435 = load i32, i32* %21, align 4
  %436 = shl i32 %435, 24
  %437 = load i32, i32* %21, align 4
  %438 = sub nsw i32 %437, 6
  %439 = load %struct.nouveau_pm_tbl_entry*, %struct.nouveau_pm_tbl_entry** %10, align 8
  %440 = getelementptr inbounds %struct.nouveau_pm_tbl_entry, %struct.nouveau_pm_tbl_entry* %439, i32 0, i32 14
  %441 = load i32, i32* %440, align 4
  %442 = add nsw i32 %438, %441
  %443 = shl i32 %442, 16
  %444 = or i32 %436, %443
  %445 = or i32 %444, 514
  %446 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %447 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %446, i32 0, i32 1
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 7
  store i32 %445, i32* %449, align 4
  br label %450

450:                                              ; preds = %336, %335
  %451 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %452 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %453 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %456 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %461 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %460, i32 0, i32 1
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 1
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %466 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 2
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %471 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 3
  %474 = load i32, i32* %473, align 4
  %475 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %451, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %454, i32 %459, i32 %464, i32 %469, i32 %474)
  %476 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %477 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %478 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %477, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 4
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %483 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %482, i32 0, i32 1
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 5
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %488 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %487, i32 0, i32 1
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 6
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %493 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %492, i32 0, i32 1
  %494 = load i32*, i32** %493, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 7
  %496 = load i32, i32* %495, align 4
  %497 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %476, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %481, i32 %486, i32 %491, i32 %496)
  %498 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %499 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %13, align 8
  %500 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %499, i32 0, i32 1
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 8
  %503 = load i32, i32* %502, align 4
  %504 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %498, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %503)
  store i32 0, i32* %7, align 4
  br label %505

505:                                              ; preds = %450, %31
  %506 = load i32, i32* %7, align 4
  ret i32 %506
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
