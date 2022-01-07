; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv50_bo_move_m2mf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv50_bo_move_m2mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32, i64, %struct.nouveau_mem* }
%struct.nouveau_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_bo = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@NvSubCopy = common dso_local global i32 0, align 4
@NV_MEMORY_TO_MEMORY_FORMAT_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nv50_bo_move_m2mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_bo_move_m2mf(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca %struct.nouveau_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %19 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %20 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %19, i32 0, i32 2
  %21 = load %struct.nouveau_mem*, %struct.nouveau_mem** %20, align 8
  store %struct.nouveau_mem* %21, %struct.nouveau_mem** %10, align 8
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %23 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %22)
  store %struct.nouveau_bo* %23, %struct.nouveau_bo** %11, align 8
  %24 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %30 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %36 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %156, %4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %210

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @min(i32 %45, i32 4194304)
  store i32 %46, i32* %16, align 4
  store i32 64, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %18, align 4
  %50 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %51 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TTM_PL_VRAM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %44
  %56 = load %struct.nouveau_bo*, %struct.nouveau_bo** %11, align 8
  %57 = call i64 @nouveau_bo_tile_layout(%struct.nouveau_bo* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %61 = call i32 @RING_SPACE(%struct.nouveau_channel* %60, i32 8)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %5, align 4
  br label %211

66:                                               ; preds = %59
  %67 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %68 = load i32, i32* @NvSubCopy, align 4
  %69 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %67, i32 %68, i32 512, i32 7)
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %71 = call i32 @OUT_RING(%struct.nouveau_channel* %70, i32 0)
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %73 = call i32 @OUT_RING(%struct.nouveau_channel* %72, i32 0)
  %74 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @OUT_RING(%struct.nouveau_channel* %74, i32 %75)
  %77 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @OUT_RING(%struct.nouveau_channel* %77, i32 %78)
  %80 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %81 = call i32 @OUT_RING(%struct.nouveau_channel* %80, i32 1)
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %83 = call i32 @OUT_RING(%struct.nouveau_channel* %82, i32 0)
  %84 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %85 = call i32 @OUT_RING(%struct.nouveau_channel* %84, i32 0)
  br label %99

86:                                               ; preds = %55, %44
  %87 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %88 = call i32 @RING_SPACE(%struct.nouveau_channel* %87, i32 2)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %5, align 4
  br label %211

93:                                               ; preds = %86
  %94 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %95 = load i32, i32* @NvSubCopy, align 4
  %96 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %94, i32 %95, i32 512, i32 1)
  %97 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %98 = call i32 @OUT_RING(%struct.nouveau_channel* %97, i32 1)
  br label %99

99:                                               ; preds = %93, %66
  %100 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %101 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TTM_PL_VRAM, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %99
  %106 = load %struct.nouveau_bo*, %struct.nouveau_bo** %11, align 8
  %107 = call i64 @nouveau_bo_tile_layout(%struct.nouveau_bo* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %111 = call i32 @RING_SPACE(%struct.nouveau_channel* %110, i32 8)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %5, align 4
  br label %211

116:                                              ; preds = %109
  %117 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %118 = load i32, i32* @NvSubCopy, align 4
  %119 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %117, i32 %118, i32 540, i32 7)
  %120 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %121 = call i32 @OUT_RING(%struct.nouveau_channel* %120, i32 0)
  %122 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %123 = call i32 @OUT_RING(%struct.nouveau_channel* %122, i32 0)
  %124 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @OUT_RING(%struct.nouveau_channel* %124, i32 %125)
  %127 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %128 = load i32, i32* %18, align 4
  %129 = call i32 @OUT_RING(%struct.nouveau_channel* %127, i32 %128)
  %130 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %131 = call i32 @OUT_RING(%struct.nouveau_channel* %130, i32 1)
  %132 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %133 = call i32 @OUT_RING(%struct.nouveau_channel* %132, i32 0)
  %134 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %135 = call i32 @OUT_RING(%struct.nouveau_channel* %134, i32 0)
  br label %149

136:                                              ; preds = %105, %99
  %137 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %138 = call i32 @RING_SPACE(%struct.nouveau_channel* %137, i32 2)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %5, align 4
  br label %211

143:                                              ; preds = %136
  %144 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %145 = load i32, i32* @NvSubCopy, align 4
  %146 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %144, i32 %145, i32 540, i32 1)
  %147 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %148 = call i32 @OUT_RING(%struct.nouveau_channel* %147, i32 1)
  br label %149

149:                                              ; preds = %143, %116
  %150 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %151 = call i32 @RING_SPACE(%struct.nouveau_channel* %150, i32 14)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* %15, align 4
  store i32 %155, i32* %5, align 4
  br label %211

156:                                              ; preds = %149
  %157 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %158 = load i32, i32* @NvSubCopy, align 4
  %159 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %157, i32 %158, i32 568, i32 2)
  %160 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @upper_32_bits(i32 %161)
  %163 = call i32 @OUT_RING(%struct.nouveau_channel* %160, i32 %162)
  %164 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @upper_32_bits(i32 %165)
  %167 = call i32 @OUT_RING(%struct.nouveau_channel* %164, i32 %166)
  %168 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %169 = load i32, i32* @NvSubCopy, align 4
  %170 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %168, i32 %169, i32 780, i32 8)
  %171 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @lower_32_bits(i32 %172)
  %174 = call i32 @OUT_RING(%struct.nouveau_channel* %171, i32 %173)
  %175 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @lower_32_bits(i32 %176)
  %178 = call i32 @OUT_RING(%struct.nouveau_channel* %175, i32 %177)
  %179 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %180 = load i32, i32* %17, align 4
  %181 = call i32 @OUT_RING(%struct.nouveau_channel* %179, i32 %180)
  %182 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @OUT_RING(%struct.nouveau_channel* %182, i32 %183)
  %185 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @OUT_RING(%struct.nouveau_channel* %185, i32 %186)
  %188 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %189 = load i32, i32* %18, align 4
  %190 = call i32 @OUT_RING(%struct.nouveau_channel* %188, i32 %189)
  %191 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %192 = call i32 @OUT_RING(%struct.nouveau_channel* %191, i32 257)
  %193 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %194 = call i32 @OUT_RING(%struct.nouveau_channel* %193, i32 0)
  %195 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %196 = load i32, i32* @NvSubCopy, align 4
  %197 = load i32, i32* @NV_MEMORY_TO_MEMORY_FORMAT_NOP, align 4
  %198 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %195, i32 %196, i32 %197, i32 1)
  %199 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %200 = call i32 @OUT_RING(%struct.nouveau_channel* %199, i32 0)
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %12, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %14, align 4
  br label %41

210:                                              ; preds = %41
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %210, %154, %141, %114, %91, %64
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @nouveau_bo_tile_layout(%struct.nouveau_bo*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
